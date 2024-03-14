//
//  ViewController.swift
//  HomeWork2.4
//
//  Created by Amirov Foma on 14.03.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var colorizedView: UIView!
    
    @IBOutlet var redLabelValue: UILabel!
    @IBOutlet var greenLabelValue: UILabel!
    @IBOutlet var blueLabelValue: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        colorizedView.layer.cornerRadius = 10
        labelsView()
        setupSliders()
    }
    
    // MARK: - IB actions
    @IBAction func redSliderAction() {
        redLabelValue.text = redSlider.value.formatted()
        colorizedView.backgroundColor = redSlider.tintColor.withAlphaComponent(CGFloat(redSlider.value))
    }
    @IBAction func greenSliderAction() {
        greenLabelValue.text = greenSlider.value.formatted()
        colorizedView.backgroundColor = greenSlider.tintColor.withAlphaComponent(CGFloat(greenSlider.value))

    }
    @IBAction func blueSliderAction() {
        blueLabelValue.text = blueSlider.value.formatted()
        colorizedView.backgroundColor = blueSlider.tintColor.withAlphaComponent(CGFloat(blueSlider.value))

    }
    // MARK: - Setup UI
    private func setupSliders() {
        redSlider.value = 0.05
        greenSlider.value = 0.33
        blueSlider.value = 0.55
    }
    
    private func labelsView() {
        redLabelValue.text = redSlider.value.formatted()
        greenLabelValue.text = greenSlider.value.formatted()
        blueLabelValue.text = blueSlider.value.formatted()
    }
}

