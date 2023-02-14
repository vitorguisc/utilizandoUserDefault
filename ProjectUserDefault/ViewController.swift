//
//  ViewController.swift
//  ProjectUserDefault
//
//  Created by Vitor Guilherme da Silva Costa on 10/02/23.
//

import UIKit

enum ValueTypeKey:String{
    case nomeProprietario = "nome"
    case desconto = "desconto"
    case valueTotal = "valueTotal"
    case arrayNomes = "arrayNomes"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //simule o app a primeira vez e depois exclua a linha 23 até a linha 36 e rode novamente. os dados ficaram salvos.
        let nomeProprietario:String = "Zé"
        Utils.saveUserDefaults(value: nomeProprietario, key: ValueTypeKey.nomeProprietario.rawValue)
        
        let desconto:Bool = true
        Utils.saveUserDefaults(value: desconto, key: ValueTypeKey.desconto.rawValue)
        
        let valueTotal:Int = 100
        Utils.saveUserDefaults(value: valueTotal, key: ValueTypeKey.valueTotal.rawValue)
        
        let arrayNomes:[String] = ["Vitor", "Guilherme","Zézao"]
        Utils.saveUserDefaults(value: arrayNomes, key: ValueTypeKey.arrayNomes.rawValue)
        
        let valueNomeProprietario: String = (Utils.getUserDefaults(key: ValueTypeKey.nomeProprietario.rawValue) as? String) ?? ""
        print(valueNomeProprietario)
        
        //get
        
        let valueDesconto: Bool = (Utils.getUserDefaults(key: ValueTypeKey.desconto.rawValue) as? Bool) ?? false
        print(valueDesconto)
        
        let valueVTotal: Int = (Utils.getUserDefaults(key: ValueTypeKey.valueTotal.rawValue) as? Int) ?? 0
        print(valueVTotal)
        
        let valueArrayNome: [String] = (Utils.getUserDefaults(key: ValueTypeKey.arrayNomes.rawValue) as? [String]) ?? []
        print(valueArrayNome)
    }


}

