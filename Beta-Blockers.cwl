cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  beta-blockers-atenixco---primary:
    run: beta-blockers-atenixco---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  beta-blockers-lopresor---primary:
    run: beta-blockers-lopresor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: beta-blockers-atenixco---primary/output
  beta-blockers-pharmacia---primary:
    run: beta-blockers-pharmacia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: beta-blockers-lopresor---primary/output
  beta-blockers-novartis---primary:
    run: beta-blockers-novartis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: beta-blockers-pharmacia---primary/output
  beta-blockers-emcor---primary:
    run: beta-blockers-emcor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: beta-blockers-novartis---primary/output
  beta-blockers-025mg---primary:
    run: beta-blockers-025mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: beta-blockers-emcor---primary/output
  beta-blockers-375mg---primary:
    run: beta-blockers-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: beta-blockers-025mg---primary/output
  beta-blockers-sotacor---primary:
    run: beta-blockers-sotacor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: beta-blockers-375mg---primary/output
  beta-blockers-suspension---primary:
    run: beta-blockers-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: beta-blockers-sotacor---primary/output
  beta-blockers-betim---primary:
    run: beta-blockers-betim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: beta-blockers-suspension---primary/output
  beta-blockers-hydrochloride---primary:
    run: beta-blockers-hydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: beta-blockers-betim---primary/output
  sectral-beta-blockers---primary:
    run: sectral-beta-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: beta-blockers-hydrochloride---primary/output
  beta-blockers-bristol---primary:
    run: beta-blockers-bristol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: sectral-beta-blockers---primary/output
  beta-blockers-sanofi---primary:
    run: beta-blockers-sanofi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: beta-blockers-bristol---primary/output
  beta-blockers-3125mg---primary:
    run: beta-blockers-3125mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: beta-blockers-sanofi---primary/output
  beta-blockers-bisoprolol---primary:
    run: beta-blockers-bisoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: beta-blockers-3125mg---primary/output
  beta-blockers-400mg---primary:
    run: beta-blockers-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: beta-blockers-bisoprolol---primary/output
  beta-blockers-sotalol---primary:
    run: beta-blockers-sotalol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: beta-blockers-400mg---primary/output
  beta-blockers-oxprenolol---primary:
    run: beta-blockers-oxprenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: beta-blockers-sotalol---primary/output
  beta-blockers-modified---primary:
    run: beta-blockers-modified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: beta-blockers-oxprenolol---primary/output
  beta-blockers-focus---primary:
    run: beta-blockers-focus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: beta-blockers-modified---primary/output
  beta-blockers-roche---primary:
    run: beta-blockers-roche---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: beta-blockers-focus---primary/output
  beta-blockers-acebutolol---primary:
    run: beta-blockers-acebutolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: beta-blockers-roche---primary/output
  corgaretic-beta-blockers---primary:
    run: corgaretic-beta-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: beta-blockers-acebutolol---primary/output
  beta-blockers-pindolol---primary:
    run: beta-blockers-pindolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: corgaretic-beta-blockers---primary/output
  beta-blockers-tablet---primary:
    run: beta-blockers-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: beta-blockers-pindolol---primary/output
  beta-blockers-nifedipine---primary:
    run: beta-blockers-nifedipine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: beta-blockers-tablet---primary/output
  beta-blockers-totamol---primary:
    run: beta-blockers-totamol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: beta-blockers-nifedipine---primary/output
  beta-blockers-chlortalidone---primary:
    run: beta-blockers-chlortalidone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: beta-blockers-totamol---primary/output
  beta-blockers-lagap---primary:
    run: beta-blockers-lagap---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: beta-blockers-chlortalidone---primary/output
  beta-blockers-pantheon---primary:
    run: beta-blockers-pantheon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: beta-blockers-lagap---primary/output
  beta-blockers-capsule---primary:
    run: beta-blockers-capsule---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: beta-blockers-pantheon---primary/output
  beta-blockers-wyeth---primary:
    run: beta-blockers-wyeth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: beta-blockers-capsule---primary/output
  beta-blockers-625mg---primary:
    run: beta-blockers-625mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: beta-blockers-wyeth---primary/output
  beta-blockers-atenolol---primary:
    run: beta-blockers-atenolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: beta-blockers-625mg---primary/output
  beta-blockers-cardicor---primary:
    run: beta-blockers-cardicor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: beta-blockers-atenolol---primary/output
  beta-blockers-sovereign---primary:
    run: beta-blockers-sovereign---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: beta-blockers-cardicor---primary/output
  beta-blockers-recordati---primary:
    run: beta-blockers-recordati---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: beta-blockers-sovereign---primary/output
  beta-blockers-prestim---primary:
    run: beta-blockers-prestim---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: beta-blockers-recordati---primary/output
  beta-blockers-atenamin---primary:
    run: beta-blockers-atenamin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: beta-blockers-prestim---primary/output
  beta-blockers-ashbourne---primary:
    run: beta-blockers-ashbourne---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: beta-blockers-atenamin---primary/output
  beta-blockers-bipranix---primary:
    run: beta-blockers-bipranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: beta-blockers-ashbourne---primary/output
  beta-blockers-amdipharm---primary:
    run: beta-blockers-amdipharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: beta-blockers-bipranix---primary/output
  beta-blockers-antipressan---primary:
    run: beta-blockers-antipressan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: beta-blockers-amdipharm---primary/output
  totaretic-beta-blockers---primary:
    run: totaretic-beta-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: beta-blockers-antipressan---primary/output
  beta-blockers-tenormin---primary:
    run: beta-blockers-tenormin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: totaretic-beta-blockers---primary/output
  beta-blockers-maleate---primary:
    run: beta-blockers-maleate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: beta-blockers-tenormin---primary/output
  beta-blockers-tenchlor---primary:
    run: beta-blockers-tenchlor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: beta-blockers-maleate---primary/output
  beta-blockers-metoro---primary:
    run: beta-blockers-metoro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: beta-blockers-tenchlor---primary/output
  beta-blockers-amiloride---primary:
    run: beta-blockers-amiloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: beta-blockers-metoro---primary/output
  beta-blockers-160mg---primary:
    run: beta-blockers-160mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: beta-blockers-amiloride---primary/output
  beta-blockers-mepranix---primary:
    run: beta-blockers-mepranix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: beta-blockers-160mg---primary/output
  beta-blockers-hillcross---primary:
    run: beta-blockers-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: beta-blockers-mepranix---primary/output
  beta-blockers-congescor---primary:
    run: beta-blockers-congescor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: beta-blockers-hillcross---primary/output
  beta-blockers-lexon---primary:
    run: beta-blockers-lexon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: beta-blockers-congescor---primary/output
  beta-blockers-visken---primary:
    run: beta-blockers-visken---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: beta-blockers-lexon---primary/output
  beta-blockers-metoprolol---primary:
    run: beta-blockers-metoprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: beta-blockers-visken---primary/output
  beta-blockers-wockhardt---primary:
    run: beta-blockers-wockhardt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: beta-blockers-metoprolol---primary/output
  beta-blockers-astrazenec---primary:
    run: beta-blockers-astrazenec---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: beta-blockers-wockhardt---primary/output
  beta-blockers-actavis---primary:
    run: beta-blockers-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: beta-blockers-astrazenec---primary/output
  beta-blockers-200mg---primary:
    run: beta-blockers-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: beta-blockers-actavis---primary/output
  beta-blockers-sandoz---primary:
    run: beta-blockers-sandoz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: beta-blockers-200mg---primary/output
  beta-blockers-tillomed---primary:
    run: beta-blockers-tillomed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: beta-blockers-sandoz---primary/output
  beta-blockers-zentiva---primary:
    run: beta-blockers-zentiva---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: beta-blockers-tillomed---primary/output
  beta-blockers-monocor---primary:
    run: beta-blockers-monocor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: beta-blockers-zentiva---primary/output
  beta-blockers-liquid---primary:
    run: beta-blockers-liquid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: beta-blockers-monocor---primary/output
  beta-blockers-celiprolol---primary:
    run: beta-blockers-celiprolol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: beta-blockers-liquid---primary/output
  beta-blockers-100mg---primary:
    run: beta-blockers-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: beta-blockers-celiprolol---primary/output
  beta-blockers-tartrate---primary:
    run: beta-blockers-tartrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: beta-blockers-100mg---primary/output
  geigy-beta-blockers---primary:
    run: geigy-beta-blockers---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: beta-blockers-tartrate---primary/output
  beta-blockers-aventi---primary:
    run: beta-blockers-aventi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: geigy-beta-blockers---primary/output
  beta-blockers-trandate---primary:
    run: beta-blockers-trandate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: beta-blockers-aventi---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: beta-blockers-trandate---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
