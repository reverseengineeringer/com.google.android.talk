.class public final Ladq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static d:[B

.field private static e:[B


# instance fields
.field private a:Ljava/io/ByteArrayInputStream;

.field private b:Ladp;

.field private c:Ladj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    sput-object v0, Ladq;->d:[B

    .line 87
    sput-object v0, Ladq;->e:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object v0, p0, Ladq;->a:Ljava/io/ByteArrayInputStream;

    .line 72
    iput-object v0, p0, Ladq;->b:Ladp;

    .line 77
    iput-object v0, p0, Ladq;->c:Ladj;

    .line 95
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Ladq;->a:Ljava/io/ByteArrayInputStream;

    .line 96
    return-void
.end method

.method private static a(Ljava/io/ByteArrayInputStream;)Ladp;
    .locals 14

    .prologue
    const/16 v13, 0x34

    const/16 v12, 0x2c

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 231
    if-nez p0, :cond_0

    move-object v0, v2

    .line 836
    :goto_0
    return-object v0

    .line 234
    :cond_0
    const/4 v0, 0x1

    .line 235
    new-instance v3, Ladp;

    invoke-direct {v3}, Ladp;-><init>()V

    .line 237
    :cond_1
    :goto_1
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    if-lez v4, :cond_d

    .line 238
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 239
    invoke-static {p0}, Ladq;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 241
    const/16 v4, 0x20

    if-lt v6, v4, :cond_2

    const/16 v4, 0x7f

    if-gt v6, v4, :cond_2

    .line 242
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 243
    invoke-static {p0, v1}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    goto :goto_1

    .line 250
    :cond_2
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 454
    :pswitch_1
    invoke-static {p0}, Ladq;->e(Ljava/io/ByteArrayInputStream;)Ladf;

    move-result-object v5

    .line 455
    if-eqz v5, :cond_1

    .line 456
    invoke-virtual {v5}, Ladf;->b()[B

    move-result-object v7

    .line 458
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v7}, Ljava/lang/String;-><init>([B)V

    .line 463
    const-string v7, "/"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 464
    if-lez v7, :cond_3

    .line 465
    invoke-virtual {v4, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 468
    :cond_3
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ladf;->a([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_b

    .line 476
    :try_start_1
    invoke-virtual {v3, v5, v6}, Ladp;->b(Ladf;I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_c

    goto :goto_1

    .line 482
    :catch_0
    move-exception v4

    goto :goto_1

    .line 253
    :pswitch_2
    invoke-static {p0}, Ladq;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 258
    packed-switch v4, :pswitch_data_1

    .line 278
    :try_start_2
    invoke-virtual {v3, v4, v6}, Ladp;->a(II)V
    :try_end_2
    .catch Ladb; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 280
    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x47

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Set invalid Octet value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into the header filed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 282
    goto :goto_0

    :pswitch_3
    move-object v0, v2

    .line 275
    goto :goto_0

    .line 284
    :catch_2
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Octet header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 285
    goto/16 :goto_0

    .line 318
    :pswitch_4
    invoke-static {p0}, Ladq;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 326
    :try_start_3
    invoke-virtual {v3, v4, v6}, Ladp;->a(II)V
    :try_end_3
    .catch Ladb; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_1

    .line 328
    :catch_3
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x47

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Set invalid Octet value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into the header filed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 330
    goto/16 :goto_0

    .line 332
    :catch_4
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Octet header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 333
    goto/16 :goto_0

    .line 344
    :pswitch_5
    :try_start_4
    invoke-static {p0}, Ladq;->g(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v4

    .line 350
    invoke-virtual {v3, v4, v5, v6}, Ladp;->a(JI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_1

    .line 352
    :catch_5
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Long-Integer header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 353
    goto/16 :goto_0

    .line 364
    :pswitch_6
    :try_start_5
    invoke-static {p0}, Ladq;->h(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v4

    .line 370
    invoke-virtual {v3, v4, v5, v6}, Ladp;->a(JI)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6

    goto/16 :goto_1

    .line 372
    :catch_6
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Long-Integer header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 373
    goto/16 :goto_0

    .line 399
    :pswitch_7
    invoke-static {p0, v1}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 400
    if-eqz v4, :cond_1

    .line 407
    :try_start_6
    invoke-virtual {v3, v4, v6}, Ladp;->a([BI)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_1

    .line 413
    :catch_7
    move-exception v4

    goto/16 :goto_1

    .line 411
    :catch_8
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Text-String header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 412
    goto/16 :goto_0

    .line 429
    :pswitch_8
    invoke-static {p0}, Ladq;->e(Ljava/io/ByteArrayInputStream;)Ladf;

    move-result-object v4

    .line 430
    if-eqz v4, :cond_1

    .line 437
    :try_start_7
    invoke-virtual {v3, v4, v6}, Ladp;->a(Ladf;I)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_a

    goto/16 :goto_1

    .line 443
    :catch_9
    move-exception v4

    goto/16 :goto_1

    .line 441
    :catch_a
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 442
    goto/16 :goto_0

    .line 471
    :catch_b
    move-exception v0

    move-object v0, v2

    goto/16 :goto_0

    .line 480
    :catch_c
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 481
    goto/16 :goto_0

    .line 494
    :pswitch_9
    invoke-static {p0}, Ladq;->d(Ljava/io/ByteArrayInputStream;)I

    .line 497
    invoke-static {p0}, Ladq;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 502
    :try_start_8
    invoke-static {p0}, Ladq;->g(Ljava/io/ByteArrayInputStream;)J
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_e

    move-result-wide v4

    .line 507
    const/16 v8, 0x81

    if-ne v8, v7, :cond_4

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    add-long/2addr v4, v8

    .line 519
    :cond_4
    :try_start_9
    invoke-virtual {v3, v4, v5, v6}, Ladp;->a(JI)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto/16 :goto_1

    .line 521
    :catch_d
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Long-Integer header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 522
    goto/16 :goto_0

    .line 504
    :catch_e
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Long-Integer header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 505
    goto/16 :goto_0

    .line 533
    :pswitch_a
    invoke-static {p0}, Ladq;->d(Ljava/io/ByteArrayInputStream;)I

    .line 536
    invoke-static {p0}, Ladq;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 539
    const/16 v5, 0x80

    if-ne v5, v4, :cond_7

    .line 541
    invoke-static {p0}, Ladq;->e(Ljava/io/ByteArrayInputStream;)Ladf;

    move-result-object v4

    .line 542
    if-eqz v4, :cond_6

    .line 543
    invoke-virtual {v4}, Ladf;->b()[B

    move-result-object v7

    .line 545
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([B)V

    .line 546
    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 547
    if-lez v7, :cond_5

    .line 548
    invoke-virtual {v5, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 551
    :cond_5
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ladf;->a([B)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10

    .line 574
    :cond_6
    :goto_2
    const/16 v5, 0x89

    :try_start_b
    invoke-virtual {v3, v4, v5}, Ladp;->a(Ladf;I)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_12

    goto/16 :goto_1

    .line 580
    :catch_f
    move-exception v4

    goto/16 :goto_1

    .line 554
    :catch_10
    move-exception v0

    move-object v0, v2

    goto/16 :goto_0

    .line 560
    :cond_7
    :try_start_c
    new-instance v4, Ladf;

    const-string v5, "insert-address-token"

    .line 561
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ladf;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_11

    goto :goto_2

    .line 563
    :catch_11
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 564
    goto/16 :goto_0

    .line 578
    :catch_12
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 579
    goto/16 :goto_0

    .line 586
    :pswitch_b
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 587
    invoke-static {p0}, Ladq;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 594
    const/16 v5, 0x80

    if-lt v4, v5, :cond_b

    .line 597
    const/16 v5, 0x80

    if-ne v5, v4, :cond_8

    .line 598
    :try_start_d
    const-string v4, "personal"

    .line 599
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8a

    .line 598
    invoke-virtual {v3, v4, v5}, Ladp;->a([BI)V

    goto/16 :goto_1

    .line 619
    :catch_13
    move-exception v4

    goto/16 :goto_1

    .line 601
    :cond_8
    const/16 v5, 0x81

    if-ne v5, v4, :cond_9

    .line 602
    const-string v4, "advertisement"

    .line 603
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8a

    .line 602
    invoke-virtual {v3, v4, v5}, Ladp;->a([BI)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_14

    goto/16 :goto_1

    .line 617
    :catch_14
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Text-String header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 618
    goto/16 :goto_0

    .line 605
    :cond_9
    const/16 v5, 0x82

    if-ne v5, v4, :cond_a

    .line 606
    :try_start_e
    const-string v4, "informational"

    .line 607
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8a

    .line 606
    invoke-virtual {v3, v4, v5}, Ladp;->a([BI)V

    goto/16 :goto_1

    .line 609
    :cond_a
    const/16 v5, 0x83

    if-ne v5, v4, :cond_1

    .line 610
    const-string v4, "auto"

    .line 611
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v5, 0x8a

    .line 610
    invoke-virtual {v3, v4, v5}, Ladp;->a([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_1

    .line 622
    :cond_b
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 623
    invoke-static {p0, v1}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 624
    if-eqz v4, :cond_1

    .line 626
    const/16 v5, 0x8a

    :try_start_f
    invoke-virtual {v3, v4, v5}, Ladp;->a([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_16

    goto/16 :goto_1

    .line 632
    :catch_15
    move-exception v4

    goto/16 :goto_1

    .line 630
    :catch_16
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Text-String header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 631
    goto/16 :goto_0

    .line 3258
    :pswitch_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 3260
    and-int/lit8 v4, v4, 0x7f

    .line 647
    const/16 v5, 0x8d

    :try_start_10
    invoke-virtual {v3, v4, v5}, Ladp;->a(II)V
    :try_end_10
    .catch Ladb; {:try_start_10 .. :try_end_10} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_18

    goto/16 :goto_1

    .line 649
    :catch_17
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x47

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Set invalid Octet value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " into the header filed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 651
    goto/16 :goto_0

    .line 653
    :catch_18
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x25

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Octet header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 654
    goto/16 :goto_0

    .line 663
    :pswitch_d
    invoke-static {p0}, Ladq;->d(Ljava/io/ByteArrayInputStream;)I

    .line 667
    :try_start_11
    invoke-static {p0}, Ladq;->h(Ljava/io/ByteArrayInputStream;)J
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_1a

    .line 675
    invoke-static {p0}, Ladq;->e(Ljava/io/ByteArrayInputStream;)Ladf;

    move-result-object v4

    .line 676
    if-eqz v4, :cond_1

    .line 683
    const/16 v5, 0xa0

    :try_start_12
    invoke-virtual {v3, v4, v5}, Ladp;->a(Ladf;I)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1b

    goto/16 :goto_1

    .line 690
    :catch_19
    move-exception v4

    goto/16 :goto_1

    .line 669
    :catch_1a
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not Integer-Value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 670
    goto/16 :goto_0

    .line 688
    :catch_1b
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 689
    goto/16 :goto_0

    .line 699
    :pswitch_e
    invoke-static {p0}, Ladq;->d(Ljava/io/ByteArrayInputStream;)I

    .line 703
    :try_start_13
    invoke-static {p0}, Ladq;->h(Ljava/io/ByteArrayInputStream;)J
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1d

    .line 711
    :try_start_14
    invoke-static {p0}, Ladq;->g(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v4

    .line 717
    const/16 v7, 0xa1

    invoke-virtual {v3, v4, v5, v7}, Ladp;->a(JI)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1c

    goto/16 :goto_1

    .line 720
    :catch_1c
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Long-Integer header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 721
    goto/16 :goto_0

    .line 705
    :catch_1d
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not Integer-Value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 706
    goto/16 :goto_0

    .line 739
    :pswitch_f
    invoke-static {p0}, Ladq;->d(Ljava/io/ByteArrayInputStream;)I

    .line 742
    invoke-static {p0}, Ladq;->f(Ljava/io/ByteArrayInputStream;)I

    .line 745
    invoke-static {p0}, Ladq;->e(Ljava/io/ByteArrayInputStream;)Ladf;

    goto/16 :goto_1

    .line 762
    :pswitch_10
    invoke-static {p0}, Ladq;->d(Ljava/io/ByteArrayInputStream;)I

    .line 765
    invoke-static {p0}, Ladq;->f(Ljava/io/ByteArrayInputStream;)I

    .line 769
    :try_start_15
    invoke-static {p0}, Ladq;->h(Ljava/io/ByteArrayInputStream;)J
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1e

    goto/16 :goto_1

    .line 771
    :catch_1e
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not Integer-Value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 772
    goto/16 :goto_0

    .line 785
    :pswitch_11
    invoke-static {p0, v2}, Ladq;->a(Ljava/io/ByteArrayInputStream;Landroid/util/SparseArray;)[B

    goto/16 :goto_1

    .line 793
    :pswitch_12
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 795
    invoke-static {p0, v4}, Ladq;->a(Ljava/io/ByteArrayInputStream;Landroid/util/SparseArray;)[B

    move-result-object v0

    .line 797
    if-eqz v0, :cond_c

    .line 804
    const/16 v5, 0x84

    :try_start_16
    invoke-virtual {v3, v0, v5}, Ladp;->a([BI)V
    :try_end_16
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1f

    .line 814
    :cond_c
    :goto_3
    const/16 v0, 0x99

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Ladq;->e:[B

    .line 817
    const/16 v0, 0x83

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Ladq;->d:[B

    move v0, v1

    .line 819
    goto/16 :goto_1

    .line 808
    :catch_1f
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2b

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is not Text-String header field!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v2

    .line 809
    goto/16 :goto_0

    :cond_d
    move-object v0, v3

    .line 836
    goto/16 :goto_0

    .line 810
    :catch_20
    move-exception v0

    goto :goto_3

    .line 250
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_12
        :pswitch_5
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_7
        :pswitch_2
        :pswitch_c
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_4
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_d
        :pswitch_e
        :pswitch_4
        :pswitch_4
        :pswitch_f
        :pswitch_4
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_10
        :pswitch_4
        :pswitch_10
        :pswitch_6
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_11
        :pswitch_6
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_4
    .end packed-switch

    .line 258
    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private static a(Ljava/io/ByteArrayInputStream;Ladr;I)Z
    .locals 9

    .prologue
    const/16 v8, 0x7f

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1626
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    move v0, p2

    .line 1629
    :cond_0
    :goto_0
    if-lez v0, :cond_d

    .line 1630
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1632
    add-int/lit8 v0, v0, -0x1

    .line 1634
    if-le v4, v8, :cond_9

    .line 1636
    sparse-switch v4, :sswitch_data_0

    .line 1732
    invoke-static {p0, v0}, Ladq;->b(Ljava/io/ByteArrayInputStream;I)I

    move-result v0

    if-ne v7, v0, :cond_8

    .line 1733
    const-string v0, "PduParser"

    const-string v2, "Corrupt Part headers"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    :goto_1
    return v1

    .line 1642
    :sswitch_0
    invoke-static {p0, v1}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1643
    if-eqz v0, :cond_1

    .line 1644
    invoke-virtual {p1, v0}, Ladr;->c([B)V

    .line 1647
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1648
    sub-int v0, v3, v0

    sub-int v0, p2, v0

    .line 1649
    goto :goto_0

    .line 1655
    :sswitch_1
    invoke-static {p0, v2}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1656
    if-eqz v0, :cond_2

    .line 1657
    invoke-virtual {p1, v0}, Ladr;->b([B)V

    .line 1660
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1661
    sub-int v0, v3, v0

    sub-int v0, p2, v0

    .line 1662
    goto :goto_0

    .line 1684
    :sswitch_2
    invoke-static {}, Laei;->a()Laei;

    move-result-object v4

    invoke-virtual {v4}, Laei;->u()Z

    move-result v4

    .line 1686
    if-eqz v4, :cond_0

    .line 1687
    invoke-static {p0}, Ladq;->d(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 1688
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1689
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1691
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1693
    const/16 v6, 0x80

    if-ne v5, v6, :cond_5

    .line 1694
    sget-object v5, Ladr;->a:[B

    invoke-virtual {p1, v5}, Ladr;->d([B)V

    .line 1707
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 1708
    sub-int v5, v4, v5

    if-ge v5, v0, :cond_4

    .line 1709
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1710
    const/16 v6, 0x98

    if-ne v5, v6, :cond_3

    .line 1711
    invoke-static {p0, v1}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ladr;->h([B)V

    .line 1716
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 1717
    sub-int v6, v4, v5

    if-ge v6, v0, :cond_4

    .line 1718
    sub-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 1719
    new-array v4, v0, [B

    .line 1720
    invoke-virtual {p0, v4, v1, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1724
    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1725
    sub-int v0, v3, v0

    sub-int v0, p2, v0

    .line 1726
    goto/16 :goto_0

    .line 1695
    :cond_5
    const/16 v6, 0x81

    if-ne v5, v6, :cond_6

    .line 1696
    sget-object v5, Ladr;->b:[B

    invoke-virtual {p1, v5}, Ladr;->d([B)V

    goto :goto_2

    .line 1697
    :cond_6
    const/16 v6, 0x82

    if-ne v5, v6, :cond_7

    .line 1698
    sget-object v5, Ladr;->c:[B

    invoke-virtual {p1, v5}, Ladr;->d([B)V

    goto :goto_2

    .line 1700
    :cond_7
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1702
    invoke-static {p0, v1}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ladr;->d([B)V

    goto :goto_2

    :cond_8
    move v0, v1

    .line 1737
    goto/16 :goto_0

    .line 1739
    :cond_9
    const/16 v5, 0x20

    if-lt v4, v5, :cond_b

    if-gt v4, v8, :cond_b

    .line 1741
    invoke-static {p0, v1}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1742
    invoke-static {p0, v1}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1745
    const-string v5, "Content-Transfer-Encoding"

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    .line 1746
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-ne v2, v0, :cond_a

    .line 1747
    invoke-virtual {p1, v4}, Ladr;->f([B)V

    .line 1750
    :cond_a
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1751
    sub-int v0, v3, v0

    sub-int v0, p2, v0

    .line 1752
    goto/16 :goto_0

    .line 1757
    :cond_b
    invoke-static {p0, v0}, Ladq;->b(Ljava/io/ByteArrayInputStream;I)I

    move-result v0

    if-ne v7, v0, :cond_c

    .line 1758
    const-string v0, "PduParser"

    const-string v2, "Corrupt Part headers"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_c
    move v0, v1

    .line 1761
    goto/16 :goto_0

    .line 1765
    :cond_d
    if-eqz v0, :cond_e

    .line 1766
    const-string v0, "PduParser"

    const-string v2, "Corrupt Part headers"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_e
    move v1, v2

    .line 1770
    goto/16 :goto_1

    .line 1636
    nop

    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0xae -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_2
    .end sparse-switch
.end method

.method private static a(Ljava/io/ByteArrayInputStream;I)[B
    .locals 6

    .prologue
    const/16 v5, 0x7e

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1099
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1102
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1104
    if-ne v1, p1, :cond_2

    const/16 v3, 0x22

    if-ne v3, v0, :cond_2

    .line 1107
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 5204
    :goto_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5205
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    move v3, v0

    .line 5207
    :goto_1
    const/4 v0, -0x1

    if-eq v0, v3, :cond_9

    if-eqz v3, :cond_9

    .line 5209
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    .line 6143
    const/16 v0, 0x21

    if-lt v3, v0, :cond_0

    if-le v3, v5, :cond_4

    :cond_0
    move v0, v2

    .line 5210
    :goto_2
    if-eqz v0, :cond_1

    .line 5211
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 5219
    :cond_1
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    move v3, v0

    .line 5220
    goto :goto_1

    .line 1108
    :cond_2
    if-nez p1, :cond_3

    const/16 v3, 0x7f

    if-ne v3, v0, :cond_3

    .line 1111
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1114
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0

    .line 6147
    :cond_4
    sparse-switch v3, :sswitch_data_0

    move v0, v1

    .line 6168
    goto :goto_2

    :sswitch_0
    move v0, v2

    .line 6165
    goto :goto_2

    .line 6187
    :cond_5
    const/16 v0, 0x20

    if-lt v3, v0, :cond_6

    if-le v3, v5, :cond_7

    :cond_6
    const/16 v0, 0x80

    if-lt v3, v0, :cond_8

    const/16 v0, 0xff

    if-gt v3, v0, :cond_8

    :cond_7
    move v0, v1

    .line 5214
    :goto_4
    if-eqz v0, :cond_1

    .line 5215
    invoke-virtual {v4, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    .line 6191
    :cond_8
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 6198
    goto :goto_4

    :pswitch_1
    move v0, v1

    .line 6195
    goto :goto_4

    .line 5223
    :cond_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 5224
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_5
    return-object v0

    .line 5227
    :cond_a
    const/4 v0, 0x0

    .line 1122
    goto :goto_5

    .line 6147
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch

    .line 6191
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Ljava/io/ByteArrayInputStream;Landroid/util/SparseArray;)[B
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .prologue
    const/16 v11, 0x81

    const/16 v10, 0x20

    const/4 v9, 0x1

    const/16 v8, 0x7f

    const/4 v2, 0x0

    .line 1544
    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1545
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1547
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1549
    and-int/lit16 v0, v0, 0xff

    .line 1551
    if-ge v0, v10, :cond_10

    .line 1552
    invoke-static {p0}, Ladq;->d(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 1553
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1554
    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1555
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1557
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1558
    and-int/lit16 v0, v0, 0xff

    .line 1560
    if-lt v0, v10, :cond_0

    if-gt v0, v8, :cond_0

    .line 1561
    invoke-static {p0, v2}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    move-object v1, v0

    .line 1576
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1577
    sub-int v0, v4, v0

    sub-int/2addr v3, v0

    .line 1578
    if-lez v3, :cond_f

    .line 1579
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 7373
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    .line 7375
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7376
    :goto_1
    if-lez v0, :cond_e

    .line 7377
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v6

    .line 7379
    add-int/lit8 v0, v0, -0x1

    .line 7381
    sparse-switch v6, :sswitch_data_0

    .line 7512
    const/4 v6, -0x1

    invoke-static {p0, v0}, Ladq;->b(Ljava/io/ByteArrayInputStream;I)I

    move-result v7

    if-ne v6, v7, :cond_d

    .line 7513
    const-string v6, "PduParser"

    const-string v7, "Corrupt Content-Type"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1562
    :cond_0
    if-le v0, v8, :cond_2

    .line 7258
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 7260
    and-int/lit8 v0, v0, 0x7f

    .line 1565
    sget-object v1, Lado;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1566
    sget-object v1, Lado;->a:[Ljava/lang/String;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1568
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1569
    invoke-static {p0, v2}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    move-object v1, v0

    .line 1571
    goto :goto_0

    .line 1572
    :cond_2
    const-string v0, "PduParser"

    const-string v1, "Corrupt content-type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    sget-object v0, Lado;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 1593
    :cond_3
    :goto_2
    return-object v1

    .line 7397
    :sswitch_0
    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 7398
    invoke-static {p0}, Ladq;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 7399
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 7400
    if-le v0, v8, :cond_5

    .line 8258
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 8260
    and-int/lit8 v0, v0, 0x7f

    .line 7404
    sget-object v6, Lado;->a:[Ljava/lang/String;

    array-length v6, v6

    if-ge v0, v6, :cond_4

    .line 7405
    sget-object v6, Lado;->a:[Ljava/lang/String;

    aget-object v0, v6, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 7406
    const/16 v6, 0x83

    invoke-virtual {p1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7418
    :cond_4
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 7419
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v0, v5, v0

    sub-int v0, v6, v0

    .line 7420
    goto :goto_1

    .line 7412
    :cond_5
    invoke-static {p0, v2}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 7413
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 7414
    const/16 v6, 0x83

    invoke-virtual {p1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 7437
    :sswitch_1
    invoke-static {p0, v2}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 7438
    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    .line 7439
    const/16 v6, 0x99

    invoke-virtual {p1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7442
    :cond_6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 7443
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v0, v5, v0

    sub-int v0, v6, v0

    .line 7444
    goto/16 :goto_1

    .line 7461
    :sswitch_2
    invoke-virtual {p0, v9}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 7462
    invoke-static {p0}, Ladq;->f(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    .line 7463
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 7465
    if-le v0, v10, :cond_7

    if-lt v0, v8, :cond_8

    :cond_7
    if-nez v0, :cond_b

    .line 7468
    :cond_8
    invoke-static {p0, v2}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 7470
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 8445
    sget-object v7, Lade;->a:Lif;

    invoke-virtual {v7, v0}, Lif;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 8446
    if-nez v0, :cond_a

    .line 8447
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0}, Ljava/io/UnsupportedEncodingException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7473
    :catch_0
    move-exception v0

    .line 7475
    const-string v7, "PduParser"

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7476
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7486
    :cond_9
    :goto_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 7487
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v0, v5, v0

    sub-int v0, v6, v0

    .line 7488
    goto/16 :goto_1

    .line 8449
    :cond_a
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 7472
    const/16 v7, 0x81

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 7480
    :cond_b
    invoke-static {p0}, Ladq;->h(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 7481
    if-eqz p1, :cond_9

    .line 7482
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v11, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 7500
    :sswitch_3
    invoke-static {p0, v2}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 7501
    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 7502
    const/16 v6, 0x97

    invoke-virtual {p1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7505
    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 7506
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v0, v5, v0

    sub-int v0, v6, v0

    .line 7507
    goto/16 :goto_1

    :cond_d
    move v0, v2

    .line 7519
    goto/16 :goto_1

    .line 7521
    :cond_e
    if-eqz v0, :cond_f

    .line 7522
    const-string v0, "PduParser"

    const-string v4, "Corrupt Content-Type"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_f
    if-gez v3, :cond_3

    .line 1583
    const-string v0, "PduParser"

    const-string v1, "Corrupt MMS message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    sget-object v0, Lado;->a:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto/16 :goto_2

    .line 1586
    :cond_10
    if-gt v0, v8, :cond_11

    .line 1587
    invoke-static {p0, v2}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v1

    goto/16 :goto_2

    .line 1589
    :cond_11
    sget-object v0, Lado;->a:[Ljava/lang/String;

    .line 9258
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 9260
    and-int/lit8 v1, v1, 0x7f

    .line 1590
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto/16 :goto_2

    .line 7381
    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_2
        0x83 -> :sswitch_0
        0x85 -> :sswitch_3
        0x89 -> :sswitch_0
        0x8a -> :sswitch_1
        0x97 -> :sswitch_3
        0x99 -> :sswitch_1
    .end sparse-switch
.end method

.method private static b(Ljava/io/ByteArrayInputStream;I)I
    .locals 2

    .prologue
    .line 1333
    new-array v0, p1, [B

    .line 1334
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v0

    .line 1335
    if-ge v0, p1, :cond_0

    .line 1336
    const/4 v0, -0x1

    .line 1338
    :cond_0
    return v0
.end method

.method private static b(Ljava/io/ByteArrayInputStream;)Ladj;
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 846
    if-nez p0, :cond_0

    move-object v0, v2

    .line 951
    :goto_0
    return-object v0

    .line 850
    :cond_0
    invoke-static {p0}, Ladq;->c(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 851
    new-instance v3, Ladj;

    invoke-direct {v3}, Ladj;-><init>()V

    move v6, v4

    .line 853
    :goto_1
    if-ge v6, v7, :cond_12

    .line 854
    invoke-static {p0}, Ladq;->c(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 855
    invoke-static {p0}, Ladq;->c(Ljava/io/ByteArrayInputStream;)I

    move-result v9

    .line 856
    new-instance v1, Ladr;

    invoke-direct {v1}, Ladr;-><init>()V

    .line 857
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 858
    if-gtz v10, :cond_1

    move-object v0, v2

    .line 860
    goto :goto_0

    .line 864
    :cond_1
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    .line 865
    invoke-static {p0, v11}, Ladq;->a(Ljava/io/ByteArrayInputStream;Landroid/util/SparseArray;)[B

    move-result-object v0

    .line 866
    if-eqz v0, :cond_4

    .line 867
    invoke-virtual {v1, v0}, Ladr;->e([B)V

    .line 873
    :goto_2
    const/16 v0, 0x97

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 874
    if-eqz v0, :cond_2

    .line 875
    invoke-virtual {v1, v0}, Ladr;->g([B)V

    .line 879
    :cond_2
    const/16 v0, 0x81

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 880
    if-eqz v0, :cond_3

    .line 881
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ladr;->a(I)V

    .line 885
    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 886
    sub-int v0, v10, v0

    sub-int v0, v8, v0

    .line 887
    if-lez v0, :cond_5

    .line 888
    invoke-static {p0, v1, v0}, Ladq;->a(Ljava/io/ByteArrayInputStream;Ladr;I)Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v2

    .line 890
    goto :goto_0

    .line 869
    :cond_4
    sget-object v0, Lado;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ladr;->e([B)V

    goto :goto_2

    .line 892
    :cond_5
    if-gez v0, :cond_6

    move-object v0, v2

    .line 894
    goto :goto_0

    .line 900
    :cond_6
    invoke-virtual {v1}, Ladr;->e()[B

    move-result-object v0

    if-nez v0, :cond_7

    .line 901
    invoke-virtual {v1}, Ladr;->i()[B

    move-result-object v0

    if-nez v0, :cond_7

    .line 902
    invoke-virtual {v1}, Ladr;->j()[B

    move-result-object v0

    if-nez v0, :cond_7

    .line 903
    invoke-virtual {v1}, Ladr;->c()[B

    move-result-object v0

    if-nez v0, :cond_7

    .line 905
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 904
    invoke-static {v10, v11}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 904
    invoke-virtual {v1, v0}, Ladr;->c([B)V

    .line 909
    :cond_7
    if-lez v9, :cond_d

    .line 910
    new-array v0, v9, [B

    .line 911
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v1}, Ladr;->g()[B

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([B)V

    .line 912
    invoke-virtual {p0, v0, v4, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 913
    const-string v9, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 915
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Ladq;->b(Ljava/io/ByteArrayInputStream;)Ladj;

    move-result-object v0

    .line 917
    invoke-virtual {v0, v4}, Ladj;->a(I)Ladr;

    move-result-object v0

    .line 3782
    :goto_3
    sget-object v1, Ladq;->d:[B

    if-nez v1, :cond_8

    sget-object v1, Ladq;->e:[B

    if-eqz v1, :cond_10

    .line 3788
    :cond_8
    sget-object v1, Ladq;->e:[B

    if-eqz v1, :cond_f

    .line 3789
    invoke-virtual {v0}, Ladr;->c()[B

    move-result-object v1

    .line 3790
    if-eqz v1, :cond_e

    .line 3791
    sget-object v8, Ladq;->e:[B

    invoke-static {v8, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-ne v5, v1, :cond_e

    move v1, v4

    .line 942
    :goto_4
    if-nez v1, :cond_11

    .line 944
    invoke-virtual {v3, v0}, Ladj;->b(Ladr;)V

    .line 853
    :goto_5
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1

    .line 920
    :cond_9
    invoke-virtual {v1}, Ladr;->h()[B

    move-result-object v8

    .line 921
    if-eqz v8, :cond_a

    .line 922
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    .line 923
    const-string v8, "base64"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 925
    invoke-static {v0}, Ladd;->a([B)[B

    move-result-object v0

    .line 933
    :cond_a
    :goto_6
    if-nez v0, :cond_c

    move-object v0, v2

    .line 935
    goto/16 :goto_0

    .line 926
    :cond_b
    const-string v8, "quoted-printable"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 928
    invoke-static {v0}, Ladu;->a([B)[B

    move-result-object v0

    goto :goto_6

    .line 937
    :cond_c
    invoke-virtual {v1, v0}, Ladr;->a([B)V

    :cond_d
    move-object v0, v1

    goto :goto_3

    :cond_e
    move v1, v5

    .line 3797
    goto :goto_4

    .line 3801
    :cond_f
    sget-object v1, Ladq;->d:[B

    if-eqz v1, :cond_10

    .line 3802
    invoke-virtual {v0}, Ladr;->g()[B

    move-result-object v1

    .line 3803
    if-eqz v1, :cond_10

    .line 3804
    sget-object v8, Ladq;->d:[B

    invoke-static {v8, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-ne v5, v1, :cond_10

    move v1, v4

    .line 3805
    goto :goto_4

    :cond_10
    move v1, v5

    .line 3810
    goto :goto_4

    .line 947
    :cond_11
    invoke-virtual {v3, v0}, Ladj;->a(Ladr;)Z

    goto :goto_5

    :cond_12
    move-object v0, v3

    .line 951
    goto/16 :goto_0
.end method

.method private static c(Ljava/io/ByteArrayInputStream;)I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 978
    const/4 v1, 0x0

    .line 979
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 980
    if-ne v0, v3, :cond_0

    .line 996
    :goto_0
    return v0

    .line 984
    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    .line 985
    shl-int/lit8 v1, v1, 0x7

    .line 986
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v1, v0

    .line 987
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 988
    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 993
    :cond_1
    shl-int/lit8 v1, v1, 0x7

    .line 994
    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    .line 996
    goto :goto_0
.end method

.method private static d(Ljava/io/ByteArrayInputStream;)I
    .locals 2

    .prologue
    .line 1015
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1017
    and-int/lit16 v0, v0, 0xff

    .line 1019
    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    .line 1022
    :goto_0
    return v0

    .line 1021
    :cond_0
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    .line 1022
    invoke-static {p0}, Ladq;->c(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    .line 1025
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Value length > LENGTH_QUOTE!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static e(Ljava/io/ByteArrayInputStream;)Ladf;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1040
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1043
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1045
    and-int/lit16 v0, v0, 0xff

    .line 1046
    if-nez v0, :cond_0

    move-object v0, v2

    .line 1069
    :goto_0
    return-object v0

    .line 1050
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1051
    const/16 v3, 0x20

    if-ge v0, v3, :cond_2

    .line 1052
    invoke-static {p0}, Ladq;->d(Ljava/io/ByteArrayInputStream;)I

    .line 4258
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 4260
    and-int/lit8 v0, v0, 0x7f

    .line 1057
    :goto_1
    invoke-static {p0, v1}, Ladq;->a(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1060
    if-eqz v0, :cond_1

    .line 1061
    :try_start_0
    new-instance v1, Ladf;

    invoke-direct {v1, v0, v3}, Ladf;-><init>(I[B)V

    move-object v0, v1

    goto :goto_0

    .line 1063
    :cond_1
    new-instance v0, Ladf;

    invoke-direct {v0, v3}, Ladf;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1066
    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private static f(Ljava/io/ByteArrayInputStream;)I
    .locals 1

    .prologue
    .line 1238
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1240
    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static g(Ljava/io/ByteArrayInputStream;)J
    .locals 7

    .prologue
    const/16 v6, 0x8

    .line 1281
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1283
    and-int/lit16 v1, v0, 0xff

    .line 1285
    if-le v1, v6, :cond_0

    .line 1286
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1289
    :cond_0
    const-wide/16 v2, 0x0

    .line 1291
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 1292
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    .line 1294
    shl-long/2addr v2, v6

    .line 1295
    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 1291
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1298
    :cond_1
    return-wide v2
.end method

.method private static h(Ljava/io/ByteArrayInputStream;)J
    .locals 2

    .prologue
    .line 1313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1314
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1316
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1317
    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    .line 6258
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 6260
    and-int/lit8 v0, v0, 0x7f

    .line 1318
    int-to-long v0, v0

    .line 1320
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0}, Ladq;->g(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ladg;
    .locals 10

    .prologue
    const/16 v7, 0x84

    const-wide/16 v8, -0x1

    const/16 v6, 0x98

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 105
    iget-object v1, p0, Ladq;->a:Ljava/io/ByteArrayInputStream;

    if-nez v1, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-object v0

    .line 110
    :cond_1
    iget-object v1, p0, Ladq;->a:Ljava/io/ByteArrayInputStream;

    invoke-static {v1}, Ladq;->a(Ljava/io/ByteArrayInputStream;)Ladp;

    move-result-object v1

    iput-object v1, p0, Ladq;->b:Ladp;

    .line 111
    iget-object v1, p0, Ladq;->b:Ladp;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Ladq;->b:Ladp;

    const/16 v3, 0x8c

    invoke-virtual {v1, v3}, Ladp;->a(I)I

    move-result v3

    .line 120
    iget-object v1, p0, Ladq;->b:Ladp;

    .line 2820
    if-nez v1, :cond_4

    move v1, v2

    .line 120
    :goto_1
    if-eqz v1, :cond_0

    .line 125
    const/16 v1, 0x80

    if-eq v1, v3, :cond_2

    if-ne v7, v3, :cond_3

    .line 128
    :cond_2
    iget-object v1, p0, Ladq;->a:Ljava/io/ByteArrayInputStream;

    invoke-static {v1}, Ladq;->b(Ljava/io/ByteArrayInputStream;)Ladj;

    move-result-object v1

    iput-object v1, p0, Ladq;->c:Ladj;

    .line 129
    iget-object v1, p0, Ladq;->c:Ladj;

    if-eqz v1, :cond_0

    .line 135
    :cond_3
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    new-instance v0, Lady;

    iget-object v1, p0, Ladq;->b:Ladp;

    iget-object v2, p0, Ladq;->c:Ladj;

    invoke-direct {v0, v1, v2}, Lady;-><init>(Ladp;Ladj;)V

    goto :goto_0

    .line 2825
    :cond_4
    const/16 v4, 0x8c

    invoke-virtual {v1, v4}, Ladp;->a(I)I

    move-result v4

    .line 2828
    const/16 v5, 0x8d

    invoke-virtual {v1, v5}, Ladp;->a(I)I

    move-result v5

    .line 2829
    if-nez v5, :cond_5

    move v1, v2

    .line 2831
    goto :goto_1

    .line 2835
    :cond_5
    packed-switch v4, :pswitch_data_1

    move v1, v2

    .line 3024
    goto :goto_1

    .line 2838
    :pswitch_1
    invoke-virtual {v1, v7}, Ladp;->b(I)[B

    move-result-object v4

    .line 2839
    if-nez v4, :cond_6

    move v1, v2

    .line 2840
    goto :goto_1

    .line 2844
    :cond_6
    const/16 v4, 0x89

    invoke-virtual {v1, v4}, Ladp;->c(I)Ladf;

    move-result-object v4

    .line 2845
    if-nez v4, :cond_7

    move v1, v2

    .line 2846
    goto :goto_1

    .line 2850
    :cond_7
    invoke-virtual {v1, v6}, Ladp;->b(I)[B

    move-result-object v1

    .line 2851
    if-nez v1, :cond_19

    move v1, v2

    .line 2852
    goto :goto_1

    .line 2858
    :pswitch_2
    const/16 v4, 0x92

    invoke-virtual {v1, v4}, Ladp;->a(I)I

    move-result v4

    .line 2859
    if-nez v4, :cond_8

    move v1, v2

    .line 2860
    goto :goto_1

    .line 2864
    :cond_8
    invoke-virtual {v1, v6}, Ladp;->b(I)[B

    move-result-object v1

    .line 2865
    if-nez v1, :cond_19

    move v1, v2

    .line 2866
    goto :goto_1

    .line 2872
    :pswitch_3
    const/16 v4, 0x83

    invoke-virtual {v1, v4}, Ladp;->b(I)[B

    move-result-object v4

    .line 2873
    if-nez v4, :cond_9

    move v1, v2

    .line 2874
    goto :goto_1

    .line 2878
    :cond_9
    const/16 v4, 0x88

    invoke-virtual {v1, v4}, Ladp;->e(I)J

    move-result-wide v4

    .line 2879
    cmp-long v4, v8, v4

    if-nez v4, :cond_a

    move v1, v2

    .line 2880
    goto :goto_1

    .line 2884
    :cond_a
    const/16 v4, 0x8a

    invoke-virtual {v1, v4}, Ladp;->b(I)[B

    move-result-object v4

    .line 2885
    if-nez v4, :cond_b

    move v1, v2

    .line 2886
    goto/16 :goto_1

    .line 2890
    :cond_b
    const/16 v4, 0x8e

    invoke-virtual {v1, v4}, Ladp;->e(I)J

    move-result-wide v4

    .line 2891
    cmp-long v4, v8, v4

    if-nez v4, :cond_c

    move v1, v2

    .line 2892
    goto/16 :goto_1

    .line 2896
    :cond_c
    invoke-virtual {v1, v6}, Ladp;->b(I)[B

    move-result-object v1

    .line 2897
    if-nez v1, :cond_19

    move v1, v2

    .line 2898
    goto/16 :goto_1

    .line 2904
    :pswitch_4
    const/16 v4, 0x95

    invoke-virtual {v1, v4}, Ladp;->a(I)I

    move-result v4

    .line 2905
    if-nez v4, :cond_d

    move v1, v2

    .line 2906
    goto/16 :goto_1

    .line 2910
    :cond_d
    invoke-virtual {v1, v6}, Ladp;->b(I)[B

    move-result-object v1

    .line 2911
    if-nez v1, :cond_19

    move v1, v2

    .line 2912
    goto/16 :goto_1

    .line 2918
    :pswitch_5
    invoke-virtual {v1, v7}, Ladp;->b(I)[B

    move-result-object v4

    .line 2919
    if-nez v4, :cond_e

    move v1, v2

    .line 2920
    goto/16 :goto_1

    .line 2924
    :cond_e
    const/16 v4, 0x85

    invoke-virtual {v1, v4}, Ladp;->e(I)J

    move-result-wide v4

    .line 2925
    cmp-long v1, v8, v4

    if-nez v1, :cond_19

    move v1, v2

    .line 2926
    goto/16 :goto_1

    .line 2932
    :pswitch_6
    const/16 v4, 0x85

    invoke-virtual {v1, v4}, Ladp;->e(I)J

    move-result-wide v4

    .line 2933
    cmp-long v4, v8, v4

    if-nez v4, :cond_f

    move v1, v2

    .line 2934
    goto/16 :goto_1

    .line 2938
    :cond_f
    const/16 v4, 0x8b

    invoke-virtual {v1, v4}, Ladp;->b(I)[B

    move-result-object v4

    .line 2939
    if-nez v4, :cond_10

    move v1, v2

    .line 2940
    goto/16 :goto_1

    .line 2944
    :cond_10
    const/16 v4, 0x95

    invoke-virtual {v1, v4}, Ladp;->a(I)I

    move-result v4

    .line 2945
    if-nez v4, :cond_11

    move v1, v2

    .line 2946
    goto/16 :goto_1

    .line 2950
    :cond_11
    const/16 v4, 0x97

    invoke-virtual {v1, v4}, Ladp;->d(I)[Ladf;

    move-result-object v1

    .line 2951
    if-nez v1, :cond_19

    move v1, v2

    .line 2952
    goto/16 :goto_1

    .line 2958
    :pswitch_7
    invoke-virtual {v1, v6}, Ladp;->b(I)[B

    move-result-object v1

    .line 2959
    if-nez v1, :cond_19

    move v1, v2

    .line 2960
    goto/16 :goto_1

    .line 2966
    :pswitch_8
    const/16 v4, 0x85

    invoke-virtual {v1, v4}, Ladp;->e(I)J

    move-result-wide v4

    .line 2967
    cmp-long v4, v8, v4

    if-nez v4, :cond_12

    move v1, v2

    .line 2968
    goto/16 :goto_1

    .line 2972
    :cond_12
    const/16 v4, 0x89

    invoke-virtual {v1, v4}, Ladp;->c(I)Ladf;

    move-result-object v4

    .line 2973
    if-nez v4, :cond_13

    move v1, v2

    .line 2974
    goto/16 :goto_1

    .line 2978
    :cond_13
    const/16 v4, 0x8b

    invoke-virtual {v1, v4}, Ladp;->b(I)[B

    move-result-object v4

    .line 2979
    if-nez v4, :cond_14

    move v1, v2

    .line 2980
    goto/16 :goto_1

    .line 2984
    :cond_14
    const/16 v4, 0x9b

    invoke-virtual {v1, v4}, Ladp;->a(I)I

    move-result v4

    .line 2985
    if-nez v4, :cond_15

    move v1, v2

    .line 2986
    goto/16 :goto_1

    .line 2990
    :cond_15
    const/16 v4, 0x97

    invoke-virtual {v1, v4}, Ladp;->d(I)[Ladf;

    move-result-object v1

    .line 2991
    if-nez v1, :cond_19

    move v1, v2

    .line 2992
    goto/16 :goto_1

    .line 2998
    :pswitch_9
    const/16 v4, 0x89

    invoke-virtual {v1, v4}, Ladp;->c(I)Ladf;

    move-result-object v4

    .line 2999
    if-nez v4, :cond_16

    move v1, v2

    .line 3000
    goto/16 :goto_1

    .line 3004
    :cond_16
    const/16 v4, 0x8b

    invoke-virtual {v1, v4}, Ladp;->b(I)[B

    move-result-object v4

    .line 3005
    if-nez v4, :cond_17

    move v1, v2

    .line 3006
    goto/16 :goto_1

    .line 3010
    :cond_17
    const/16 v4, 0x9b

    invoke-virtual {v1, v4}, Ladp;->a(I)I

    move-result v4

    .line 3011
    if-nez v4, :cond_18

    move v1, v2

    .line 3012
    goto/16 :goto_1

    .line 3016
    :cond_18
    const/16 v4, 0x97

    invoke-virtual {v1, v4}, Ladp;->d(I)[Ladf;

    move-result-object v1

    .line 3017
    if-nez v1, :cond_19

    move v1, v2

    .line 3018
    goto/16 :goto_1

    .line 3027
    :cond_19
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 146
    :pswitch_a
    new-instance v0, Ladx;

    iget-object v1, p0, Ladq;->b:Ladp;

    invoke-direct {v0, v1}, Ladx;-><init>(Ladp;)V

    goto/16 :goto_0

    .line 152
    :pswitch_b
    new-instance v0, Ladi;

    iget-object v1, p0, Ladq;->b:Ladp;

    invoke-direct {v0, v1}, Ladi;-><init>(Ladp;)V

    goto/16 :goto_0

    .line 159
    :pswitch_c
    new-instance v0, Ladg;

    iget-object v1, p0, Ladq;->b:Ladp;

    invoke-direct {v0, v1, v2}, Ladg;-><init>(Ladp;S)V

    goto/16 :goto_0

    .line 166
    :pswitch_d
    new-instance v1, Ladw;

    iget-object v3, p0, Ladq;->b:Ladp;

    iget-object v4, p0, Ladq;->c:Ladj;

    invoke-direct {v1, v3, v4}, Ladw;-><init>(Ladp;Ladj;)V

    .line 169
    invoke-virtual {v1}, Ladw;->g()[B

    move-result-object v3

    .line 170
    if-eqz v3, :cond_0

    .line 173
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 174
    const-string v3, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "application/vnd.wap.multipart.related"

    .line 175
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    const-string v3, "application/vnd.wap.multipart.alternative"

    .line 176
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1a
    move-object v0, v1

    .line 180
    goto/16 :goto_0

    .line 181
    :cond_1b
    const-string v3, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v0, p0, Ladq;->c:Ladj;

    invoke-virtual {v0, v2}, Ladj;->a(I)Ladr;

    move-result-object v0

    .line 185
    iget-object v2, p0, Ladq;->c:Ladj;

    invoke-virtual {v2}, Ladj;->a()V

    .line 186
    iget-object v2, p0, Ladq;->c:Ladj;

    invoke-virtual {v2, v0}, Ladj;->b(Ladr;)V

    move-object v0, v1

    .line 187
    goto/16 :goto_0

    .line 194
    :pswitch_e
    new-instance v0, Ladg;

    iget-object v1, p0, Ladq;->b:Ladp;

    invoke-direct {v0, v1, v2}, Ladg;-><init>(Ladp;C)V

    goto/16 :goto_0

    .line 201
    :pswitch_f
    new-instance v0, Ladg;

    iget-object v1, p0, Ladq;->b:Ladp;

    invoke-direct {v0, v1, v2}, Ladg;-><init>(Ladp;B)V

    goto/16 :goto_0

    .line 208
    :pswitch_10
    new-instance v0, Ladv;

    iget-object v1, p0, Ladq;->b:Ladp;

    invoke-direct {v0, v1}, Ladv;-><init>(Ladp;)V

    goto/16 :goto_0

    .line 215
    :pswitch_11
    new-instance v0, Ladg;

    iget-object v1, p0, Ladq;->b:Ladp;

    invoke-direct {v0, v1, v2}, Ladg;-><init>(Ladp;I)V

    goto/16 :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_e
        :pswitch_11
        :pswitch_10
    .end packed-switch

    .line 2835
    :pswitch_data_1
    .packed-switch 0x80
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
