.class public Lcgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcgs;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Landroid/net/Uri;

.field private final k:Ljava/lang/String;

.field private final l:I

.field private final m:I

.field private final n:Ljava/lang/String;

.field private final transient o:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcgs;->a:Ljava/nio/charset/Charset;

    .line 733
    new-instance v0, Lcgt;

    invoke-direct {v0}, Lcgt;-><init>()V

    sput-object v0, Lcgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgs;->b:Ljava/lang/String;

    .line 748
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 749
    const-string v1, "conversation"

    .line 750
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    const-string v0, "conversation"

    .line 752
    :cond_0
    iput-object v0, p0, Lcgs;->c:Ljava/lang/String;

    .line 753
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgs;->d:Ljava/lang/String;

    .line 754
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgs;->e:Ljava/lang/String;

    .line 755
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgs;->f:Ljava/lang/String;

    .line 756
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgs;->g:Ljava/lang/String;

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgs;->h:Ljava/lang/String;

    .line 758
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgs;->i:Ljava/lang/String;

    .line 759
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgs;->k:Ljava/lang/String;

    .line 760
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcgs;->m:I

    .line 761
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcgs;->l:I

    .line 762
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcgs;->n:Ljava/lang/String;

    .line 763
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Lcgs;->o:Landroid/app/PendingIntent;

    .line 764
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcgs;->j:Landroid/net/Uri;

    .line 765
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V
    .locals 3

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "externalKeyType specified but not externalKey"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 122
    :cond_0
    iput-object p1, p0, Lcgs;->b:Ljava/lang/String;

    .line 123
    iput p3, p0, Lcgs;->l:I

    .line 124
    iput p2, p0, Lcgs;->m:I

    .line 125
    iput-object p5, p0, Lcgs;->d:Ljava/lang/String;

    .line 126
    const-string v1, "conversation"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    if-eqz p6, :cond_1

    invoke-virtual {p6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 1134
    :goto_0
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v1}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 131
    const-string v1, "conversation"

    iput-object v1, p0, Lcgs;->c:Ljava/lang/String;

    .line 132
    iput-object p5, p0, Lcgs;->e:Ljava/lang/String;

    .line 137
    :goto_1
    iput-object p7, p0, Lcgs;->f:Ljava/lang/String;

    .line 138
    iput-object p8, p0, Lcgs;->g:Ljava/lang/String;

    .line 139
    iput-object p9, p0, Lcgs;->h:Ljava/lang/String;

    .line 140
    iput-object p10, p0, Lcgs;->i:Ljava/lang/String;

    .line 141
    iput-object p11, p0, Lcgs;->n:Ljava/lang/String;

    .line 142
    move-object/from16 v0, p13

    iput-object v0, p0, Lcgs;->o:Landroid/app/PendingIntent;

    .line 143
    iput-object p12, p0, Lcgs;->k:Ljava/lang/String;

    .line 144
    move-object/from16 v0, p14

    iput-object v0, p0, Lcgs;->j:Landroid/net/Uri;

    .line 145
    return-void

    .line 127
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 134
    :cond_3
    iput-object p4, p0, Lcgs;->c:Ljava/lang/String;

    .line 135
    iput-object p6, p0, Lcgs;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a(Landroid/content/SharedPreferences;)Lcgs;
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v13, 0x0

    .line 523
    const-string v0, "ACCOUNT_NAME"

    invoke-interface {p0, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 524
    const-string v0, "CALL_MEDIA_TYPE"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 525
    const-string v0, "EXTERNAL_KEY"

    invoke-interface {p0, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 526
    const-string v0, "EXTERNAL_KEY_TYPE"

    invoke-interface {p0, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 527
    const-string v0, "CONVERSATION_ID"

    invoke-interface {p0, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 528
    const-string v0, "INFO_HANGOUT_DOMAIN"

    invoke-interface {p0, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 529
    const-string v0, "INFO_HANGOUT_ID"

    invoke-interface {p0, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 530
    const-string v0, "INFO_CALENDAR_ID"

    invoke-interface {p0, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 531
    const-string v0, "INFO_EVENT_ID"

    invoke-interface {p0, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 532
    const-string v0, "PENDING_HANGOUT_ID_KEY"

    invoke-interface {p0, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 533
    const-string v0, "ORIGINAL_URI"

    invoke-interface {p0, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 536
    :goto_0
    const-string v0, "HANGOUT_TYPE"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 537
    const-string v0, "INFO_INVITEE_NICK"

    invoke-interface {p0, v0, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 538
    new-instance v0, Lcgs;

    invoke-direct/range {v0 .. v14}, Lcgs;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V

    return-object v0

    :cond_0
    move-object v14, v13

    .line 534
    goto :goto_0
.end method

.method public static a(Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;)Lcgs;
    .locals 15

    .prologue
    .line 587
    if-nez p0, :cond_0

    .line 588
    const/4 v0, 0x0

    .line 682
    :goto_0
    return-object v0

    .line 591
    :cond_0
    const/4 v8, 0x0

    .line 592
    const/4 v7, 0x0

    .line 593
    const/4 v6, 0x0

    .line 594
    const/4 v5, 0x0

    .line 595
    const/4 v9, 0x0

    .line 596
    const/4 v10, 0x0

    .line 599
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 600
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v11

    .line 601
    const/4 v0, 0x2

    if-ne v11, v0, :cond_3

    .line 602
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 603
    const/4 v1, 0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 604
    const-string v2, "hangouts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v5, v7

    move-object v4, v8

    move-object v8, v1

    move-object v7, v6

    .line 669
    :goto_1
    const-string v0, "hceid"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 671
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 672
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 673
    new-instance v9, Ljava/lang/String;

    .line 3373
    sget-object v1, Lkyr;->a:Lkyr;

    .line 673
    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Lkyr;->a(Ljava/lang/CharSequence;)[B

    move-result-object v1

    sget-object v2, Lcgs;->a:Ljava/nio/charset/Charset;

    invoke-direct {v9, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 674
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 678
    :cond_1
    if-nez v8, :cond_d

    if-nez v5, :cond_d

    .line 679
    const-string v0, "vclib"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not parse "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4089
    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 680
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 607
    :cond_2
    const-string v2, "call"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_2
    move-object v5, v7

    move-object v4, v8

    move-object v8, v1

    move-object v7, v6

    .line 611
    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    if-ne v11, v0, :cond_6

    .line 612
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 613
    const/4 v1, 0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 614
    const/4 v2, 0x2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 615
    const-string v3, "talkgadget"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "hangout"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v5, v7

    move-object v4, v8

    move-object v8, v2

    move-object v7, v6

    .line 617
    goto/16 :goto_1

    .line 618
    :cond_4
    const-string v3, "hangouts"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v5, v2

    :cond_5
    move-object v4, v8

    move-object v8, v5

    move-object v5, v7

    move-object v7, v6

    .line 622
    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x4

    if-ne v11, v0, :cond_b

    .line 623
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 624
    const/4 v1, 0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 625
    const/4 v2, 0x2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 626
    const/4 v3, 0x3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 627
    const-string v4, "hangouts"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "_"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 628
    const-string v0, "lite"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v5, v7

    move-object v4, v8

    move-object v8, v3

    move-object v7, v6

    .line 630
    goto/16 :goto_1

    .line 631
    :cond_7
    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 636
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v8

    move-object v8, v5

    move-object v5, v7

    move-object v7, v2

    goto/16 :goto_1

    :cond_8
    move-object v8, v5

    move-object v7, v6

    move-object v4, v2

    move-object v5, v3

    .line 640
    goto/16 :goto_1

    .line 642
    :cond_9
    const-string v4, "call"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x2e

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v12, 0x1

    if-eq v4, v12, :cond_a

    move-object v5, v7

    move-object v4, v8

    move-object v8, v2

    move-object v7, v1

    .line 645
    goto/16 :goto_1

    .line 646
    :cond_a
    const-string v4, "hangouts"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "extras"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 650
    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_3
    move-object v4, v8

    move-object v8, v5

    move-object v5, v7

    move-object v7, v2

    .line 652
    goto/16 :goto_1

    :cond_b
    const/4 v0, 0x5

    if-ne v11, v0, :cond_e

    .line 653
    const/4 v0, 0x0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 654
    const/4 v1, 0x1

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 655
    const/4 v2, 0x2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 656
    const/4 v3, 0x3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 657
    const/4 v12, 0x4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 658
    const-string v12, "hangouts"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "_"

    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "extras"

    .line 660
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "meet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 665
    :cond_c
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v8

    move-object v8, v5

    move-object v5, v7

    move-object v7, v3

    goto/16 :goto_1

    .line 682
    :cond_d
    new-instance v0, Lcgs;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v1, p1

    move-object/from16 v13, p2

    move-object v14, p0

    invoke-direct/range {v0 .. v14}, Lcgs;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V

    goto/16 :goto_0

    :cond_e
    move-object v4, v8

    move-object v8, v5

    move-object v5, v7

    move-object v7, v6

    goto/16 :goto_1

    :cond_f
    move-object v2, v6

    goto :goto_3

    :cond_10
    move-object v1, v5

    goto/16 :goto_2
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcgs;->b:Ljava/lang/String;

    return-object v0
.end method

.method a(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 507
    const-string v0, "ACCOUNT_NAME"

    iget-object v1, p0, Lcgs;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    const-string v0, "CALL_MEDIA_TYPE"

    iget v1, p0, Lcgs;->l:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 509
    const-string v0, "EXTERNAL_KEY"

    iget-object v1, p0, Lcgs;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 510
    const-string v0, "EXTERNAL_KEY_TYPE"

    iget-object v1, p0, Lcgs;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 511
    const-string v0, "CONVERSATION_ID"

    iget-object v1, p0, Lcgs;->e:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 512
    const-string v0, "INFO_HANGOUT_DOMAIN"

    iget-object v1, p0, Lcgs;->f:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 513
    const-string v0, "INFO_HANGOUT_ID"

    iget-object v1, p0, Lcgs;->g:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 514
    const-string v0, "INFO_CALENDAR_ID"

    iget-object v1, p0, Lcgs;->h:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 515
    const-string v0, "INFO_EVENT_ID"

    iget-object v1, p0, Lcgs;->i:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 516
    const-string v0, "PENDING_HANGOUT_ID_KEY"

    iget-object v1, p0, Lcgs;->k:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 517
    const-string v0, "HANGOUT_TYPE"

    iget v1, p0, Lcgs;->m:I

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 518
    const-string v0, "INFO_INVITEE_NICK"

    iget-object v1, p0, Lcgs;->n:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 519
    const-string v1, "ORIGINAL_URI"

    iget-object v0, p0, Lcgs;->j:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcgs;->j:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 520
    return-void

    .line 519
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcgs;->d:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public b(Ljava/lang/String;)Lcgs;
    .locals 15

    .prologue
    .line 251
    new-instance v0, Lcgs;

    iget-object v1, p0, Lcgs;->b:Ljava/lang/String;

    iget v2, p0, Lcgs;->m:I

    iget v3, p0, Lcgs;->l:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcgs;->f:Ljava/lang/String;

    iget-object v8, p0, Lcgs;->g:Ljava/lang/String;

    iget-object v9, p0, Lcgs;->h:Ljava/lang/String;

    iget-object v10, p0, Lcgs;->i:Ljava/lang/String;

    .line 262
    invoke-static/range {p1 .. p1}, Laal;->A(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, p0, Lcgs;->j:Landroid/net/Uri;

    invoke-direct/range {v0 .. v14}, Lcgs;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcgs;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcgs;
    .locals 16

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcgs;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcgs;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcgs;->o:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcgs;->k:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2134
    :goto_0
    const-string v2, "Expected condition to be true"

    invoke-static {v2, v1}, Lhbs;->a(Ljava/lang/String;Z)V

    .line 274
    move-object/from16 v0, p0

    iget-object v1, v0, Lcgs;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcgs;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    :goto_1
    return-object p0

    .line 269
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 277
    :cond_1
    new-instance v1, Lcgs;

    move-object/from16 v0, p0

    iget v3, v0, Lcgs;->m:I

    move-object/from16 v0, p0

    iget v4, v0, Lcgs;->l:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcgs;->f:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcgs;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcgs;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcgs;->i:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcgs;->j:Landroid/net/Uri;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v15}, Lcgs;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V

    move-object/from16 p0, v1

    goto :goto_1
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcgs;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lcgs;->r()Lcgs;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lcgs;
    .locals 15

    .prologue
    .line 296
    new-instance v0, Lcgs;

    iget-object v1, p0, Lcgs;->b:Ljava/lang/String;

    iget v2, p0, Lcgs;->m:I

    iget v3, p0, Lcgs;->l:I

    iget-object v4, p0, Lcgs;->c:Ljava/lang/String;

    iget-object v5, p0, Lcgs;->d:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v9, p0, Lcgs;->h:Ljava/lang/String;

    iget-object v10, p0, Lcgs;->i:Ljava/lang/String;

    iget-object v11, p0, Lcgs;->n:Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcgs;->o:Landroid/app/PendingIntent;

    iget-object v14, p0, Lcgs;->j:Landroid/net/Uri;

    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v14}, Lcgs;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcgs;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x0

    return v0
.end method

.method public e(Ljava/lang/String;)Lcgs;
    .locals 15

    .prologue
    .line 314
    const-string v0, "conversation"

    iget-object v1, p0, Lcgs;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    if-nez p1, :cond_1

    .line 318
    iget-object v0, p0, Lcgs;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcgs;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "conversation"

    iget-object v1, p0, Lcgs;->c:Ljava/lang/String;

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Erasing the only data of conv id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_1
    new-instance v0, Lcgs;

    iget-object v1, p0, Lcgs;->b:Ljava/lang/String;

    iget v2, p0, Lcgs;->m:I

    iget v3, p0, Lcgs;->l:I

    if-nez p1, :cond_2

    .line 327
    const/4 v4, 0x0

    :goto_0
    iget-object v7, p0, Lcgs;->f:Ljava/lang/String;

    iget-object v8, p0, Lcgs;->g:Ljava/lang/String;

    iget-object v9, p0, Lcgs;->h:Ljava/lang/String;

    iget-object v10, p0, Lcgs;->i:Ljava/lang/String;

    iget-object v11, p0, Lcgs;->n:Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcgs;->o:Landroid/app/PendingIntent;

    iget-object v14, p0, Lcgs;->j:Landroid/net/Uri;

    move-object/from16 v5, p1

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v14}, Lcgs;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V

    .line 340
    :goto_1
    return-object v0

    .line 327
    :cond_2
    const-string v4, "conversation"

    goto :goto_0

    .line 340
    :cond_3
    new-instance v0, Lcgs;

    iget-object v1, p0, Lcgs;->b:Ljava/lang/String;

    iget v2, p0, Lcgs;->m:I

    iget v3, p0, Lcgs;->l:I

    iget-object v4, p0, Lcgs;->c:Ljava/lang/String;

    iget-object v5, p0, Lcgs;->d:Ljava/lang/String;

    iget-object v7, p0, Lcgs;->f:Ljava/lang/String;

    iget-object v8, p0, Lcgs;->g:Ljava/lang/String;

    iget-object v9, p0, Lcgs;->h:Ljava/lang/String;

    iget-object v10, p0, Lcgs;->i:Ljava/lang/String;

    iget-object v11, p0, Lcgs;->n:Ljava/lang/String;

    const/4 v12, 0x0

    iget-object v13, p0, Lcgs;->o:Landroid/app/PendingIntent;

    iget-object v14, p0, Lcgs;->j:Landroid/net/Uri;

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v14}, Lcgs;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V

    goto :goto_1
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcgs;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x4

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 440
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 484
    :cond_0
    :goto_0
    return v2

    .line 443
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 447
    check-cast p1, Lcgs;

    .line 448
    iget-object v0, p0, Lcgs;->b:Ljava/lang/String;

    iget-object v3, p1, Lcgs;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget v0, p0, Lcgs;->m:I

    if-ne v0, v5, :cond_6

    move v0, v1

    .line 454
    :goto_1
    iget v3, p1, Lcgs;->m:I

    if-ne v3, v5, :cond_7

    move v3, v1

    .line 2488
    :goto_2
    if-eq v0, v4, :cond_2

    if-ne v3, v4, :cond_8

    :cond_2
    move v0, v1

    .line 459
    :goto_3
    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcgs;->c:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcgs;->c:Ljava/lang/String;

    iget-object v3, p1, Lcgs;->c:Ljava/lang/String;

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcgs;->d:Ljava/lang/String;

    iget-object v3, p1, Lcgs;->d:Ljava/lang/String;

    .line 468
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    .line 469
    :goto_4
    iget-object v3, p0, Lcgs;->e:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcgs;->e:Ljava/lang/String;

    iget-object v4, p1, Lcgs;->e:Ljava/lang/String;

    .line 470
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v3, v1

    .line 471
    :goto_5
    iget-object v4, p0, Lcgs;->g:Ljava/lang/String;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcgs;->g:Ljava/lang/String;

    iget-object v5, p1, Lcgs;->g:Ljava/lang/String;

    .line 473
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcgs;->f:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, p1, Lcgs;->f:Ljava/lang/String;

    if-eqz v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcgs;->f:Ljava/lang/String;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcgs;->f:Ljava/lang/String;

    iget-object v5, p1, Lcgs;->f:Ljava/lang/String;

    .line 475
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_4
    move v4, v1

    .line 476
    :goto_6
    iget-object v5, p0, Lcgs;->k:Ljava/lang/String;

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcgs;->k:Ljava/lang/String;

    iget-object v6, p1, Lcgs;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    move v5, v1

    .line 478
    :goto_7
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    if-nez v4, :cond_5

    if-eqz v5, :cond_0

    :cond_5
    move v2, v1

    .line 484
    goto/16 :goto_0

    .line 453
    :cond_6
    iget v0, p0, Lcgs;->m:I

    goto :goto_1

    .line 457
    :cond_7
    iget v3, p1, Lcgs;->m:I

    goto :goto_2

    .line 2490
    :cond_8
    if-eq v0, v1, :cond_9

    if-ne v0, v6, :cond_c

    .line 2499
    :cond_9
    if-eq v3, v1, :cond_a

    if-ne v3, v6, :cond_b

    :cond_a
    move v0, v1

    goto :goto_3

    :cond_b
    move v0, v2

    goto :goto_3

    .line 2502
    :cond_c
    if-ne v0, v3, :cond_d

    move v0, v1

    goto :goto_3

    :cond_d
    move v0, v2

    goto :goto_3

    :cond_e
    move v0, v2

    .line 468
    goto :goto_4

    :cond_f
    move v3, v2

    .line 470
    goto :goto_5

    :cond_10
    move v4, v2

    .line 475
    goto :goto_6

    :cond_11
    move v5, v2

    .line 476
    goto :goto_7
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcgs;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcgs;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcgs;->h:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcgs;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 429
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcgs;->m:I

    add-int/2addr v0, v1

    .line 435
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcgs;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcgs;->k:Ljava/lang/String;

    return-object v0
.end method

.method public k()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcgs;->j:Landroid/net/Uri;

    return-object v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcgs;->l:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcgs;->m:I

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcgs;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcgs;->o:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcgs;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcgs;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcgs;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcgs;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Lcgs;
    .locals 15

    .prologue
    .line 360
    new-instance v0, Lcgs;

    iget-object v1, p0, Lcgs;->b:Ljava/lang/String;

    iget v2, p0, Lcgs;->m:I

    iget v3, p0, Lcgs;->l:I

    iget-object v4, p0, Lcgs;->c:Ljava/lang/String;

    iget-object v5, p0, Lcgs;->d:Ljava/lang/String;

    iget-object v6, p0, Lcgs;->e:Ljava/lang/String;

    iget-object v7, p0, Lcgs;->f:Ljava/lang/String;

    iget-object v8, p0, Lcgs;->g:Ljava/lang/String;

    iget-object v9, p0, Lcgs;->h:Ljava/lang/String;

    iget-object v10, p0, Lcgs;->i:Ljava/lang/String;

    iget-object v11, p0, Lcgs;->n:Ljava/lang/String;

    iget-object v12, p0, Lcgs;->k:Ljava/lang/String;

    iget-object v13, p0, Lcgs;->o:Landroid/app/PendingIntent;

    iget-object v14, p0, Lcgs;->j:Landroid/net/Uri;

    invoke-direct/range {v0 .. v14}, Lcgs;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/net/Uri;)V

    return-object v0
.end method

.method public s()V
    .locals 4

    .prologue
    .line 701
    iget-object v0, p0, Lcgs;->o:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 703
    :try_start_0
    iget-object v0, p0, Lcgs;->o:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    const-string v1, "vclib"

    const-string v2, "HangoutRequest call complete intent could not be sent"

    .line 4097
    const/4 v3, 0x5

    invoke-static {v3, v1, v2, v0}, Lhlk;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x3a

    const/16 v3, 0x20

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    const-string v1, "HangoutRequest{ account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcgs;->b:Ljava/lang/String;

    invoke-static {v2}, Lhlk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    const-string v1, "callMediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcgs;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget-object v1, p0, Lcgs;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 390
    const-string v1, "conversation"

    iget-object v2, p0, Lcgs;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 391
    const-string v1, "extKey="

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcgs;->c:Ljava/lang/String;

    .line 393
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 394
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcgs;->d:Ljava/lang/String;

    .line 395
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_0
    const-string v1, "convId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcgs;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_1
    iget-object v1, p0, Lcgs;->g:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 401
    const-string v1, "hangoutId="

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcgs;->f:Ljava/lang/String;

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcgs;->g:Ljava/lang/String;

    .line 405
    invoke-static {v2}, Lhlk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_2
    iget-object v1, p0, Lcgs;->h:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcgs;->i:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 409
    const-string v1, "calendarId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcgs;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcgs;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_3
    iget-object v1, p0, Lcgs;->k:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 412
    const-string v1, "pendingIdKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcgs;->k:Ljava/lang/String;

    invoke-static {v2}, Lhlk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    :cond_4
    iget-object v1, p0, Lcgs;->n:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 415
    const-string v1, "inviteeNick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcgs;->n:Ljava/lang/String;

    invoke-static {v2}, Lhlk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 417
    :cond_5
    iget-object v1, p0, Lcgs;->j:Landroid/net/Uri;

    if-eqz v1, :cond_6

    .line 418
    const-string v1, "originalUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcgs;->j:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 420
    :cond_6
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcgs;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcgs;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcgs;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 720
    iget-object v0, p0, Lcgs;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 721
    iget-object v0, p0, Lcgs;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcgs;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcgs;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcgs;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 725
    iget-object v0, p0, Lcgs;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 726
    iget v0, p0, Lcgs;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    iget v0, p0, Lcgs;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    iget-object v0, p0, Lcgs;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcgs;->o:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 730
    iget-object v0, p0, Lcgs;->j:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 731
    return-void
.end method
