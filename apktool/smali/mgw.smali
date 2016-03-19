.class public final Lmgw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/high16 v0, 0x42900000    # 72.0f

    sput v0, Lmgw;->a:F

    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/lang/Integer;Ljava/lang/Integer;F)Lmgu;
    .locals 9

    .prologue
    .line 323
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 325
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 328
    new-instance v3, Landroid/graphics/Picture;

    invoke-direct {v3}, Landroid/graphics/Picture;-><init>()V

    .line 329
    new-instance v4, Lmhd;

    .line 2140
    invoke-direct {v4, v3}, Lmhd;-><init>(Landroid/graphics/Picture;)V

    .line 330
    invoke-virtual {v4, p1, p2}, Lmhd;->a(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 331
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmhd;->a(Z)V

    .line 332
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmhd;->b(Z)V

    .line 333
    invoke-virtual {v4, p3}, Lmhd;->a(F)V

    .line 338
    new-instance v5, Lmgx;

    invoke-direct {v5, p0}, Lmgx;-><init>(Ljava/io/InputStream;)V

    .line 340
    new-instance v6, Lmgz;

    .line 3073
    invoke-direct {v6}, Lmgz;-><init>()V

    .line 341
    invoke-interface {v2, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 343
    new-instance v7, Lorg/xml/sax/InputSource;

    invoke-virtual {v5}, Lmgx;->a()Ljava/io/ByteArrayInputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v7}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 344
    iget-object v6, v6, Lmgz;->a:Ljava/util/HashMap;

    iput-object v6, v4, Lmhd;->a:Ljava/util/HashMap;

    .line 346
    invoke-interface {v2, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 347
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-virtual {v5}, Lmgx;->a()Ljava/io/ByteArrayInputStream;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 349
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v5, 0x30

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Parsing complete in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " millis."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    new-instance v0, Lmgu;

    iget-object v1, v4, Lmhd;->o:Landroid/graphics/RectF;

    invoke-direct {v0, v3, v1}, Lmgu;-><init>(Landroid/graphics/Picture;Landroid/graphics/RectF;)V

    .line 352
    iget-object v1, v4, Lmhd;->p:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    .line 353
    iget-object v1, v4, Lmhd;->p:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lmgu;->a(Landroid/graphics/RectF;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :cond_0
    return-object v0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xd

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Parse error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    new-instance v1, Lax;

    invoke-direct {v1, v0}, Lax;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Ljava/lang/String;)Lmhb;
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 375
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .line 377
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    move v0, v1

    move v3, v1

    .line 379
    :goto_0
    if-ge v4, v5, :cond_4

    .line 380
    if-eqz v0, :cond_0

    move v0, v1

    .line 379
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 384
    :cond_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 385
    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    .line 422
    :sswitch_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 424
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 426
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 427
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    const/16 v3, 0x2d

    if-ne v7, v3, :cond_2

    move v3, v4

    .line 429
    goto :goto_1

    .line 408
    :sswitch_1
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 411
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 412
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_1
    new-instance v0, Lmhb;

    invoke-direct {v0, v6, v4}, Lmhb;-><init>(Ljava/util/ArrayList;I)V

    .line 451
    :goto_2
    return-object v0

    .line 431
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v3, v0

    move v0, v2

    .line 434
    goto :goto_1

    .line 435
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 441
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 445
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 451
    :cond_5
    new-instance v0, Lmhb;

    invoke-direct {v0, v6, v3}, Lmhb;-><init>(Ljava/util/ArrayList;I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    .line 385
    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_0
        0x29 -> :sswitch_1
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x41 -> :sswitch_1
        0x43 -> :sswitch_1
        0x48 -> :sswitch_1
        0x4c -> :sswitch_1
        0x4d -> :sswitch_1
        0x51 -> :sswitch_1
        0x53 -> :sswitch_1
        0x54 -> :sswitch_1
        0x56 -> :sswitch_1
        0x5a -> :sswitch_1
        0x61 -> :sswitch_1
        0x63 -> :sswitch_1
        0x68 -> :sswitch_1
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x71 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_1
        0x76 -> :sswitch_1
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method static a(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lmhb;
    .locals 3

    .prologue
    .line 855
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 856
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 857
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 858
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmgw;->a(Ljava/lang/String;)Lmhb;

    move-result-object v0

    .line 861
    :goto_1
    return-object v0

    .line 856
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 861
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static b(Ljava/lang/String;)Landroid/graphics/Path;
    .locals 54

    .prologue
    .line 570
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v27

    .line 571
    new-instance v28, Lmgt;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lmgt;-><init>(Ljava/lang/CharSequence;)V

    .line 572
    invoke-virtual/range {v28 .. v28}, Lmgt;->a()V

    .line 573
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 574
    const/4 v11, 0x0

    .line 575
    const/4 v10, 0x0

    .line 576
    const/4 v9, 0x0

    .line 577
    const/4 v8, 0x0

    .line 578
    const/4 v7, 0x0

    .line 579
    const/4 v6, 0x0

    .line 580
    new-instance v29, Landroid/graphics/RectF;

    invoke-direct/range {v29 .. v29}, Landroid/graphics/RectF;-><init>()V

    .line 581
    const/16 v5, 0x78

    move v12, v6

    move v13, v7

    move v14, v8

    move v15, v9

    move v7, v5

    move v6, v10

    move v5, v11

    .line 582
    :goto_0
    move-object/from16 v0, v28

    iget v8, v0, Lmgt;->a:I

    move/from16 v0, v27

    if-ge v8, v0, :cond_13

    .line 583
    move-object/from16 v0, v28

    iget v8, v0, Lmgt;->a:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 584
    invoke-static {v11}, Ljava/lang/Character;->isDigit(C)Z

    move-result v8

    if-nez v8, :cond_1

    const/16 v8, 0x2e

    if-eq v11, v8, :cond_1

    const/16 v8, 0x2d

    if-eq v11, v8, :cond_1

    .line 586
    invoke-virtual/range {v28 .. v28}, Lmgt;->b()V

    .line 594
    :goto_1
    const/4 v7, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v4, v0, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 597
    const/4 v9, 0x0

    .line 598
    sparse-switch v11, :sswitch_data_0

    .line 766
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x17

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Invalid path command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 767
    invoke-virtual/range {v28 .. v28}, Lmgt;->b()V

    move v7, v14

    move v8, v15

    move v10, v5

    move v5, v12

    move v12, v9

    move v9, v6

    move v6, v13

    .line 769
    :goto_2
    if-nez v12, :cond_0

    move v7, v9

    move v8, v10

    .line 773
    :cond_0
    invoke-virtual/range {v28 .. v28}, Lmgt;->a()V

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    move v7, v11

    move v6, v9

    move v5, v10

    .line 774
    goto :goto_0

    .line 587
    :cond_1
    const/16 v8, 0x4d

    if-ne v7, v8, :cond_2

    .line 588
    const/16 v11, 0x4c

    goto :goto_1

    .line 589
    :cond_2
    const/16 v8, 0x6d

    if-ne v7, v8, :cond_16

    .line 590
    const/16 v11, 0x6c

    goto :goto_1

    .line 601
    :sswitch_0
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v8

    .line 602
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v7

    .line 603
    const/16 v10, 0x6d

    if-ne v11, v10, :cond_3

    .line 604
    invoke-virtual {v4, v8, v7}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 605
    add-float/2addr v8, v5

    .line 606
    add-float v5, v6, v7

    move v6, v8

    :goto_3
    move v12, v9

    move v7, v14

    move v8, v15

    move v10, v6

    move v9, v5

    .line 614
    goto :goto_2

    .line 608
    :cond_3
    invoke-virtual {v4, v8, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v7

    move v6, v8

    .line 610
    goto :goto_3

    .line 619
    :sswitch_1
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    move v5, v12

    move v6, v13

    move v7, v14

    move v8, v15

    move v10, v13

    move/from16 v52, v12

    move v12, v9

    move/from16 v9, v52

    .line 622
    goto :goto_2

    .line 626
    :sswitch_2
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v7

    .line 627
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v10

    .line 628
    const/16 v8, 0x6c

    if-ne v11, v8, :cond_4

    .line 629
    invoke-virtual {v4, v7, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 630
    add-float/2addr v5, v7

    .line 631
    add-float/2addr v10, v6

    move v6, v13

    move v7, v14

    move v8, v15

    move/from16 v52, v12

    move v12, v9

    move v9, v10

    move v10, v5

    move/from16 v5, v52

    goto :goto_2

    .line 633
    :cond_4
    invoke-virtual {v4, v7, v10}, Landroid/graphics/Path;->lineTo(FF)V

    move v5, v12

    move v6, v13

    move v8, v15

    move v12, v9

    move v9, v10

    move v10, v7

    move v7, v14

    .line 637
    goto :goto_2

    .line 641
    :sswitch_3
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v10

    .line 642
    const/16 v7, 0x68

    if-ne v11, v7, :cond_5

    .line 643
    const/4 v7, 0x0

    invoke-virtual {v4, v10, v7}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 644
    add-float/2addr v5, v10

    move v7, v14

    move v8, v15

    move v10, v5

    move v5, v12

    move v12, v9

    move v9, v6

    move v6, v13

    goto/16 :goto_2

    .line 646
    :cond_5
    invoke-virtual {v4, v10, v6}, Landroid/graphics/Path;->lineTo(FF)V

    move v5, v12

    move v7, v14

    move v8, v15

    move v12, v9

    move v9, v6

    move v6, v13

    .line 649
    goto/16 :goto_2

    .line 653
    :sswitch_4
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v10

    .line 654
    const/16 v7, 0x76

    if-ne v11, v7, :cond_6

    .line 655
    const/4 v7, 0x0

    invoke-virtual {v4, v7, v10}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 656
    add-float/2addr v10, v6

    move v6, v13

    move v7, v14

    move v8, v15

    move/from16 v52, v12

    move v12, v9

    move v9, v10

    move v10, v5

    move/from16 v5, v52

    goto/16 :goto_2

    .line 658
    :cond_6
    invoke-virtual {v4, v5, v10}, Landroid/graphics/Path;->lineTo(FF)V

    move v6, v13

    move v7, v14

    move v8, v15

    move/from16 v52, v12

    move v12, v9

    move v9, v10

    move v10, v5

    move/from16 v5, v52

    .line 661
    goto/16 :goto_2

    .line 665
    :sswitch_5
    const/16 v16, 0x1

    .line 666
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v15

    .line 667
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v14

    .line 668
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v7

    .line 669
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v8

    .line 670
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v9

    .line 671
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v10

    .line 672
    const/16 v17, 0x63

    move/from16 v0, v17

    if-ne v11, v0, :cond_15

    .line 673
    add-float/2addr v15, v5

    .line 674
    add-float/2addr v7, v5

    .line 675
    add-float/2addr v9, v5

    .line 676
    add-float v5, v14, v6

    .line 677
    add-float/2addr v8, v6

    .line 678
    add-float/2addr v10, v6

    move v6, v5

    move v5, v15

    .line 680
    :goto_4
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v12

    move v6, v13

    move/from16 v12, v16

    move/from16 v52, v8

    move v8, v7

    move/from16 v7, v52

    move/from16 v53, v10

    move v10, v9

    move/from16 v9, v53

    .line 685
    goto/16 :goto_2

    .line 689
    :sswitch_6
    const/16 v16, 0x1

    .line 690
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v7

    .line 691
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v8

    .line 692
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v9

    .line 693
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v10

    .line 694
    const/16 v17, 0x73

    move/from16 v0, v17

    if-ne v11, v0, :cond_7

    .line 695
    add-float/2addr v7, v5

    .line 696
    add-float/2addr v9, v5

    .line 697
    add-float/2addr v8, v6

    .line 698
    add-float/2addr v10, v6

    .line 700
    :cond_7
    const/high16 v17, 0x40000000    # 2.0f

    mul-float v5, v5, v17

    sub-float/2addr v5, v15

    .line 701
    const/high16 v15, 0x40000000    # 2.0f

    mul-float/2addr v6, v15

    sub-float/2addr v6, v14

    .line 702
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v12

    move v6, v13

    move/from16 v12, v16

    move/from16 v52, v8

    move v8, v7

    move/from16 v7, v52

    move/from16 v53, v10

    move v10, v9

    move/from16 v9, v53

    .line 707
    goto/16 :goto_2

    .line 711
    :sswitch_7
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v7

    .line 712
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v16

    .line 713
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v17

    .line 714
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v8

    float-to-int v0, v8

    move/from16 v18, v0

    .line 715
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v8

    float-to-int v0, v8

    move/from16 v19, v0

    .line 716
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v8

    .line 717
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v10

    .line 718
    const/16 v20, 0x61

    move/from16 v0, v20

    if-ne v11, v0, :cond_8

    .line 719
    add-float/2addr v8, v5

    .line 720
    add-float/2addr v10, v6

    .line 722
    :cond_8
    float-to-double v0, v5

    move-wide/from16 v30, v0

    float-to-double v0, v6

    move-wide/from16 v32, v0

    float-to-double v0, v8

    move-wide/from16 v34, v0

    float-to-double v0, v10

    move-wide/from16 v36, v0

    float-to-double v6, v7

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const/4 v5, 0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_b

    const/4 v5, 0x1

    move/from16 v26, v5

    :goto_5
    const/4 v5, 0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_c

    const/4 v5, 0x1

    .line 3785
    :goto_6
    sub-double v18, v30, v34

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    .line 3786
    sub-double v20, v32, v36

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    div-double v20, v20, v24

    .line 3787
    const-wide v24, 0x4076800000000000L    # 360.0

    rem-double v16, v16, v24

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .line 3788
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    .line 3789
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v40

    .line 3791
    mul-double v16, v38, v18

    mul-double v24, v40, v20

    add-double v42, v16, v24

    .line 3792
    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v18

    mul-double v18, v38, v20

    add-double v44, v16, v18

    .line 3793
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    .line 3794
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    .line 3796
    mul-double v16, v20, v20

    .line 3797
    mul-double v6, v18, v18

    .line 3798
    mul-double v46, v42, v42

    .line 3799
    mul-double v48, v44, v44

    .line 3802
    div-double v22, v46, v16

    div-double v24, v48, v6

    add-double v22, v22, v24

    .line 3803
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v24, v22, v24

    if-lez v24, :cond_14

    .line 3804
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v20, v20, v6

    .line 3805
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v18, v18, v6

    .line 3806
    mul-double v16, v20, v20

    .line 3807
    mul-double v6, v18, v18

    move-wide/from16 v22, v18

    move-wide/from16 v24, v20

    move-wide/from16 v18, v6

    move-wide/from16 v20, v16

    .line 3811
    :goto_7
    move/from16 v0, v26

    if-ne v0, v5, :cond_d

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-wide/from16 v16, v6

    .line 3812
    :goto_8
    mul-double v6, v20, v18

    mul-double v50, v20, v48

    sub-double v6, v6, v50

    mul-double v50, v18, v46

    sub-double v6, v6, v50

    mul-double v20, v20, v48

    mul-double v18, v18, v46

    add-double v18, v18, v20

    div-double v6, v6, v18

    .line 3814
    const-wide/16 v18, 0x0

    cmpg-double v18, v6, v18

    if-gez v18, :cond_9

    const-wide/16 v6, 0x0

    .line 3815
    :cond_9
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double v6, v6, v16

    .line 3816
    mul-double v16, v24, v44

    div-double v16, v16, v22

    mul-double v16, v16, v6

    .line 3817
    mul-double v18, v22, v42

    div-double v18, v18, v24

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    mul-double v6, v6, v18

    .line 3819
    add-double v18, v30, v34

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    .line 3820
    add-double v20, v32, v36

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v20, v20, v30

    .line 3821
    mul-double v30, v38, v16

    mul-double v32, v40, v6

    sub-double v30, v30, v32

    add-double v18, v18, v30

    .line 3822
    mul-double v30, v40, v16

    mul-double v32, v38, v6

    add-double v30, v30, v32

    add-double v20, v20, v30

    .line 3825
    sub-double v30, v42, v16

    div-double v30, v30, v24

    .line 3826
    sub-double v32, v44, v6

    div-double v32, v32, v22

    .line 3827
    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v34, v0

    sub-double v16, v34, v16

    div-double v16, v16, v24

    .line 3828
    move-wide/from16 v0, v44

    neg-double v0, v0

    move-wide/from16 v34, v0

    sub-double v6, v34, v6

    div-double v34, v6, v22

    .line 3832
    mul-double v6, v30, v30

    mul-double v36, v32, v32

    add-double v6, v6, v36

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    .line 3834
    const-wide/16 v6, 0x0

    cmpg-double v6, v32, v6

    if-gez v6, :cond_e

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 3835
    :goto_9
    div-double v36, v30, v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Math;->acos(D)D

    move-result-wide v36

    mul-double v6, v6, v36

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v36

    .line 3838
    mul-double v6, v30, v30

    mul-double v38, v32, v32

    add-double v6, v6, v38

    mul-double v38, v16, v16

    mul-double v40, v34, v34

    add-double v38, v38, v40

    mul-double v6, v6, v38

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v38

    .line 3839
    mul-double v6, v30, v16

    mul-double v40, v32, v34

    add-double v40, v40, v6

    .line 3840
    mul-double v6, v30, v34

    mul-double v16, v16, v32

    sub-double v6, v6, v16

    const-wide/16 v16, 0x0

    cmpg-double v6, v6, v16

    if-gez v6, :cond_f

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    .line 3841
    :goto_a
    div-double v16, v40, v38

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->acos(D)D

    move-result-wide v16

    mul-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    .line 3842
    if-nez v5, :cond_10

    const-wide/16 v16, 0x0

    cmpl-double v16, v6, v16

    if-lez v16, :cond_10

    .line 3843
    const-wide v16, 0x4076800000000000L    # 360.0

    sub-double v6, v6, v16

    .line 3847
    :cond_a
    :goto_b
    const-wide v16, 0x4076800000000000L    # 360.0

    rem-double v6, v6, v16

    .line 3848
    const-wide v16, 0x4076800000000000L    # 360.0

    rem-double v16, v36, v16

    .line 3850
    new-instance v5, Landroid/graphics/RectF;

    sub-double v30, v18, v24

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v26, v0

    sub-double v30, v20, v22

    move-wide/from16 v0, v30

    double-to-float v0, v0

    move/from16 v30, v0

    add-double v18, v18, v24

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v26

    move/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 3851
    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    double-to-float v6, v6

    move/from16 v0, v16

    invoke-virtual {v4, v5, v0, v6}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    move v5, v12

    move v6, v13

    move v7, v14

    move v12, v9

    move v9, v10

    move v10, v8

    move v8, v15

    .line 725
    goto/16 :goto_2

    .line 722
    :cond_b
    const/4 v5, 0x0

    move/from16 v26, v5

    goto/16 :goto_5

    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 3811
    :cond_d
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v16, v6

    goto/16 :goto_8

    .line 3834
    :cond_e
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_9

    .line 3840
    :cond_f
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_a

    .line 3844
    :cond_10
    if-eqz v5, :cond_a

    const-wide/16 v16, 0x0

    cmpg-double v5, v6, v16

    if-gez v5, :cond_a

    .line 3845
    const-wide v16, 0x4076800000000000L    # 360.0

    add-double v6, v6, v16

    goto :goto_b

    .line 729
    :sswitch_8
    const/16 v16, 0x1

    .line 730
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v9

    .line 731
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v10

    .line 732
    const/16 v7, 0x74

    if-ne v11, v7, :cond_11

    .line 733
    add-float/2addr v9, v5

    .line 734
    add-float/2addr v10, v6

    .line 736
    :cond_11
    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v7, v5

    sub-float/2addr v7, v15

    .line 737
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v6

    sub-float/2addr v8, v14

    .line 738
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v12

    move v6, v13

    move/from16 v12, v16

    move/from16 v52, v8

    move v8, v7

    move/from16 v7, v52

    move/from16 v53, v10

    move v10, v9

    move/from16 v9, v53

    .line 743
    goto/16 :goto_2

    .line 747
    :sswitch_9
    const/4 v14, 0x1

    .line 748
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v7

    .line 749
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v8

    .line 750
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v9

    .line 751
    invoke-virtual/range {v28 .. v28}, Lmgt;->c()F

    move-result v10

    .line 752
    const/16 v15, 0x71

    if-ne v11, v15, :cond_12

    .line 753
    add-float/2addr v9, v5

    .line 754
    add-float/2addr v10, v6

    .line 755
    add-float/2addr v7, v5

    .line 756
    add-float/2addr v8, v6

    .line 758
    :cond_12
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    move v5, v12

    move v6, v13

    move v12, v14

    move/from16 v52, v8

    move v8, v7

    move/from16 v7, v52

    move/from16 v53, v10

    move v10, v9

    move/from16 v9, v53

    .line 763
    goto/16 :goto_2

    .line 775
    :cond_13
    return-object v4

    :cond_14
    move-wide/from16 v22, v18

    move-wide/from16 v24, v20

    move-wide/from16 v18, v6

    move-wide/from16 v20, v16

    goto/16 :goto_7

    :cond_15
    move v6, v14

    move v5, v15

    goto/16 :goto_4

    :cond_16
    move v11, v7

    goto/16 :goto_1

    .line 598
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_7
        0x43 -> :sswitch_5
        0x48 -> :sswitch_3
        0x4c -> :sswitch_2
        0x4d -> :sswitch_0
        0x51 -> :sswitch_9
        0x53 -> :sswitch_6
        0x54 -> :sswitch_8
        0x56 -> :sswitch_4
        0x5a -> :sswitch_1
        0x61 -> :sswitch_7
        0x63 -> :sswitch_5
        0x68 -> :sswitch_3
        0x6c -> :sswitch_2
        0x6d -> :sswitch_0
        0x71 -> :sswitch_9
        0x73 -> :sswitch_6
        0x74 -> :sswitch_8
        0x76 -> :sswitch_4
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method static b(Ljava/lang/String;Lorg/xml/sax/Attributes;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 865
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v1

    .line 866
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 867
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 868
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    .line 871
    :goto_1
    return-object v0

    .line 866
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 871
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
