<?php

namespace App\Models;

use Database\Factories\UserFactory;
use Illuminate\Database\Eloquent\Attributes\Fillable;
use Illuminate\Database\Eloquent\Attributes\Hidden;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

#[Fillable(['nm_usuario', 'email', 'senha', 'fl_admin', 'fl_ativo'])]
#[Hidden(['senha', 'remember_token'])]
class User extends Authenticatable
{
    /** @use HasFactory<UserFactory> */
    use HasApiTokens, HasFactory, Notifiable;

    protected $table = 'tb_usuario';
    protected $primaryKey = 'id_usuario';

    public function getAuthPassword(): string
    {
        return $this->senha;
    }

    public function cliente()
    {
        return $this->hasOne(Cliente::class, 'id_usuario', 'id_usuario');
    }

    public function prestador()
    {
        return $this->hasOne(Prestador::class, 'id_usuario', 'id_usuario');
    }

    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'senha' => 'hashed',
            'fl_admin' => 'boolean',
            'fl_ativo' => 'boolean',
        ];
    }
}