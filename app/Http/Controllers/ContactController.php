<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Contact;

class ContactController extends Controller
{
    //
    public function index(Request $req)
    {
        $user_id=session('crud_operation')['id']; 

        $contact = Contact::where('user_id',$user_id)->get();
        return view('welcome')->with("contact", $contact);
    }
    public function add(Request $req)
    {
        $user_id=session('crud_operation')['id']; 
        $contact = new Contact;
        $contact->email = $req->email;
        $contact->phone = $req->phone;
        $contact->name = $req->name;
        $contact->user_id = $user_id;
        $contact->save();
        return redirect()->back();
    }
    public function delete(Request $req)
    {
        $contact = Contact::find($req->id);
        $contact->delete();
        return redirect()->back();
    }
    public function edit(Request $req)
    {
        $contact = Contact::find($req->id);
        return view('edit')->with("contact", $contact);
    }
    public function update(Request $req)
    {
        $contact = Contact::find($req->id);
        $contact->update([
            'name' => $req->name,
            'phone' => $req->phone,
            'email' => $req->email,
        ]);
        return redirect('/');
    }
}
