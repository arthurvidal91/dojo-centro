# -*- coding: utf-8 -*-

require "caixas"

describe Caixas do

  describe ".empilhar" do

    subject { Caixas.empilhar(caixas) }

    context "Com uma caixa" do
      let(:caixas) { [{ :peso => 1, :capacidade => 2 }] }
      it { should == 1 }
    end

    context "Com duas caixas iguais empilháveis" do
      let(:caixas) {[{ :peso => 1, :capacidade => 2 },
                     { :peso => 1, :capacidade => 2 }] }
      it { should == 2 }
    end

    context "Com duas caixas não empilháveis" do
      let(:caixas) {[{ :peso => 1, :capacidade => 0 },
                     { :peso => 1, :capacidade => 0 }] }
      it { should == 1 }
    end

    context "Com duas caixas empilháveis" do
      let(:caixas) {[{ :peso => 1, :capacidade => 1 },
                     { :peso => 1, :capacidade => 0 }] }
      it { should == 2 }
    end

    context "Com duas caixas não empilháveis com capacidade maior que 0" do
      let(:caixas) {[{ :peso => 2, :capacidade => 1 },
                     { :peso => 2, :capacidade => 1 }] }
      it { should == 1 }
    end

    context "Sem caixas" do
      let(:caixas) { [] }
      it { should == 0 }
    end

    context "Com 3 caixas empilhaveis" do
      let(:caixas) {[{ :peso => 2, :capacidade => 10 },
                     { :peso => 2, :capacidade => 10 },
                     { :peso => 2, :capacidade => 10 }] }
      it { should == 3 }
    end

    context "Com 3 caixas, 2 empilhaveis" do
      let(:caixas) {[{ :peso => 2, :capacidade => 10 },
                     { :peso => 2, :capacidade => 10 },
                     { :peso => 11, :capacidade => 10 }] }
      it { should == 2 }
    end

    context "Com 3 caixas, nenhuma empilhavel" do
      let(:caixas) {[{ :peso => 11, :capacidade => 10 },
                     { :peso => 11, :capacidade => 10 },
                     { :peso => 11, :capacidade => 10 }] }
      it { should == 1 }
    end

  end

end
