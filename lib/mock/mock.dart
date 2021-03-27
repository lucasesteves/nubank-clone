import 'package:flutter/material.dart';

import '../model/dashboard.dart';
import '../model/menu.dart';

const DashboardMock = [
  DashboardModel(
    'Cartão de crédito',
    Icons.credit_card_rounded,
    'Fatura atual',
    false,
    '',
    1345.09,
    'Limite disponível',
    704.97,
  ),
  DashboardModel(
    'Conta',
    Icons.money_rounded,
    'Saldo disponível',
    false,
    '',
    526.58,
  ),
  DashboardModel(
    'Pix',
    Icons.square_foot_sharp,
    'Trasnfira usando o Pix',
    true,
    'Começar a usar',
    null,
    'Pague e receba em tempo real, sem custo e para qualquer banco',
  ),
  DashboardModel(
    'Empréstimo',
    Icons.money_outlined,
    '',
    true,
    'Simular empréstimo',
    8700.00,
    'Valor disponível de até',
  ),
  DashboardModel('Rewards', Icons.card_giftcard,
      'Apague compras com pontos que nunca expiram', true, 'Conhecer'),
  DashboardModel(
      'Seguro de vida',
      Icons.replay_5_outlined,
      'Conheça Nubank Vida: um seguro simples e que cabe no bolso',
      true,
      'Conhecer'),
];

const MenuMock = [
  Menu(
    title: 'Pix',
    icon: Icons.square_foot_sharp,
  ),
  Menu(
    title: 'Pagar',
    icon: Icons.qr_code,
  ),
  Menu(
    title: 'Indicar amigos',
    icon: Icons.person_add,
  ),
  Menu(
    title: 'Trasferir',
    icon: Icons.share_sharp,
  ),
  Menu(
    title: 'Depositar',
    icon: Icons.grid_view,
  ),
  Menu(
    title: 'Empréstimos',
    icon: Icons.baby_changing_station,
  ),
  Menu(
    title: 'Cartão virtual',
    icon: Icons.baby_changing_station,
  ),
  Menu(
    title: 'Recarga de celular',
    icon: Icons.phone_android,
  ),
  Menu(
    title: 'Ajustar limite',
    icon: Icons.space_bar,
  ),
  Menu(
    title: 'Desbloquear cartão',
    icon: Icons.lock_open,
  ),
  Menu(title: 'Cobrar', icon: Icons.payment),
  Menu(title: 'Doação', icon: Icons.donut_large),
  Menu(title: 'Me ajuda', icon: Icons.help),
];
