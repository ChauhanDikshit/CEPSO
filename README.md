# 🚚 CEPSO: A Feasibility Restoration Particle Swarm Optimizer with Chaotic Maps for Two-Stage Fixed-Charge Transportation Problems  
📄 Published in *Swarm and Evolutionary Computation* (Elsevier)

---

## 📌 About the Project

**CEPSO** is a novel optimization algorithm designed to solve the **two-stage non-linear fixed-charge transportation problem (NFCTP)**—a complex and **NP-hard** problem. In NFCTP, each arc incurs both fixed and variable costs, where the variable cost increases quadratically with the transported units. This results in significant computational challenges, especially in large-scale scenarios.

To tackle this, CEPSO introduces several key innovations:

### 🚀 Key Features

- **Feasibility Restoration Mechanism**  
  Ensures solution feasibility using:
  - Constraint compliance adjustment  
  - Ratio adjustment procedures  

- **Non-linear Adaptive Parameters**  
  Introduces adaptive **inertia weight** and **acceleration coefficients** to enhance exploration and exploitation capabilities throughout the optimization process.

- **Chaotic Acceleration Coefficients**  
  Integrates **10 chaotic maps** into the acceleration coefficients, increasing diversity and avoiding premature convergence.

---

## 🧪 Experimental Evaluation

- Tested on both **small** and **large-scale** NFCTPs (ranging from **35 to 1044 dimensions**).
- Compared against multiple PSO variants using standard performance metrics.
- Results confirm **CEPSO’s superior optimization performance** and feasibility assurance, especially in high-dimensional cases.

---

## ▶️ Usage

> 💡 **Requirements**: MATLAB R2018 or later recommended.

1. **Clone the repository**:
   ```bash
   git clone https://github.com/ChauhanDikshit/CEPSO.git
   cd CEPSO
   ```

2. **Open `main_CEPSO.m`** in MATLAB.

3. **Run the main script**:
   ```matlab
   main_CEPSO
   ```

4. **Modify problem instances or parameters** inside the script as needed:
   - Change the number of particles
   - Choose a different chaotic map
   - Adjust stopping criteria, dimensions, etc.

---

## 📊 Results Visualization (Optional)

The code generates plots such as:

- **Convergence Curves** (objective value vs. iteration)
- **Feasibility ratio**
- **Comparison of chaotic maps**

> You can customize plotting functions in `plot_results.m`.

---

## 📖 Citation

If you use this work, please cite:

```
@article{chauhan2024feasibility,
  title={A feasibility restoration particle swarm optimizer with chaotic maps for two-stage fixed-charge transportation problems},
  author={Shivani and Chauhan, Dikshit and Rani, Deepika and others},
  journal={Swarm and Evolutionary Computation},
  volume={91},
  pages={101776},
  year={2024},
  publisher={Elsevier}
}
```

**OR**

```
@article{SHIVANI2024101776,
  title = {A feasibility restoration particle swarm optimizer with chaotic maps for two-stage fixed-charge transportation problems},
  journal = {Swarm and Evolutionary Computation},
  volume = {91},
  pages = {101776},
  year = {2024},
  issn = {2210-6502},
  doi = {https://doi.org/10.1016/j.swevo.2024.101776},
  url = {https://www.sciencedirect.com/science/article/pii/S2210650224003146},
  author = {Shivani and Dikshit Chauhan and Deepika Rani},
  keywords = {Combinatorial optimization, Evolutionary algorithms, Transportation, Optimization}
}
```

---

## 📎 Access the Code

🔗 GitHub Repository: [https://github.com/ChauhanDikshit](https://github.com/ChauhanDikshit)

---

## 🙏 Acknowledgements

Special thanks to:

- **Dr. Shivani**, **Dr. Deepika Rani**, and **Dr. Anupam Yadav**  
  *(PSO base code: [MathWorks Profile](https://www.mathworks.com/matlabcentral/profile/authors/2870277))*

- **Dr. Seyedali Mirjalili**  
  *(Chaotic maps code: [MathWorks Profile](https://www.mathworks.com/matlabcentral/profile/authors/2943818))*

---

⭐ Feel free to star this repository if you find it useful! Contributions and feedback are welcome.
