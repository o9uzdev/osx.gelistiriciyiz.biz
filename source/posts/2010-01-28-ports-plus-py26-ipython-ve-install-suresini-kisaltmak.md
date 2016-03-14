---
title: "ports + py26-ipython ve install süresini kısaltmak"
date: Jan 28, 2010 11:26
tags: osx,ports,python
---

```bash
port variants py26-ipython
```

bakıldığında;

    [+]scientific: Use ScientificPython to provide physical quantities support

diye bir ek görülecektir. Eğer bu tür hesaplamalar yapmıyorsanız ya da yapmayacaksanız 
boşuna bu eki kurmayın;

```bash
sudo port install  py26-ipython -scientific
```