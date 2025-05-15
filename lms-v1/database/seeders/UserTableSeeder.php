<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use DB;

class UserTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('users')->insert([
            // Admin 

            [
                'name' => 'Admin',
                'username' => 'admin',
                'email' => 'indahoktav00@gmail.com',
                'password' => Hash::make('admin123_'),
                'role' => 'admin',
                'status' => '1',
            ],
                // Instructor 
            [
                'name' => 'Instructor',
                'username' => 'instructor',
                'email' => 'indahoktav02@gmail.com',
                'password' => Hash::make('4yu1nd4h_'),
                'role' => 'instructor',
                'status' => '1',
            ],
                // User Data 
            [
                'name' => 'User',
                'username' => 'user',
                'email' => 'indahoktav09@gmail.com',
                'password' => Hash::make('indahoktav'),
                'role' => 'user',
                'status' => '1',
            ], 

        ]);
    }

}
