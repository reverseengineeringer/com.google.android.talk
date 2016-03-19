.class public final Lcqb;
.super Lime;
.source "SourceFile"


# instance fields
.field aj:Lhpu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lime;-><init>()V

    return-void
.end method

.method static synthetic a(Lcqb;ZLcpx;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 3223
    invoke-virtual {p0}, Lcqb;->c()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3224
    invoke-virtual {p0}, Lcqb;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3370
    :cond_0
    iget-object v0, p0, Lcqb;->an:Lilh;

    const-class v1, Lhpu;

    .line 3371
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    .line 3370
    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    .line 3372
    if-eqz p1, :cond_1

    .line 3373
    sget-object v1, Lcqg;->a:[I

    invoke-virtual {p2}, Lcpx;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3227
    :goto_0
    new-instance v0, Lcpy;

    iget-object v1, p0, Lcqb;->am:Lill;

    invoke-direct {v0, v1, p3, p4}, Lcpy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    iget-object v1, p0, Lcqb;->am:Lill;

    invoke-virtual {v0, v1, p5}, Lcpy;->a(Landroid/content/Context;I)V

    .line 43
    return-void

    .line 3375
    :pswitch_0
    const/16 v1, 0x74a

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 3379
    :pswitch_1
    const/16 v1, 0x74b

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 3383
    :pswitch_2
    const/16 v1, 0x749

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 3387
    :pswitch_3
    const/16 v1, 0xa3d

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 3391
    :pswitch_4
    const/16 v1, 0x91f

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 3395
    :pswitch_5
    const/16 v1, 0x98a

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 3400
    :cond_1
    sget-object v1, Lcqg;->a:[I

    invoke-virtual {p2}, Lcpx;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 3406
    :pswitch_6
    const/16 v1, 0x745

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 3402
    :pswitch_7
    const/16 v1, 0x744

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 3410
    :pswitch_8
    const/16 v1, 0x742

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 3414
    :pswitch_9
    const/16 v1, 0xa3b

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 3418
    :pswitch_a
    const/16 v1, 0x8d8

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 3422
    :pswitch_b
    const/16 v1, 0x91d

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_0

    .line 3373
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 3400
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 23

    .prologue
    .line 108
    invoke-virtual/range {p0 .. p0}, Lcqb;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "conversation_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcqb;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcqb;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "contact"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-virtual/range {p0 .. p0}, Lcqb;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "trigger_action"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcpx;

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcqb;->getActivity()Lba;

    move-result-object v3

    invoke-virtual {v3}, Lba;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 115
    sget v4, Laal;->nr:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 117
    sget v3, Laal;->no:I

    .line 118
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 119
    sget v4, Laal;->nq:I

    .line 120
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 121
    sget v5, Laal;->nn:I

    .line 122
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroid/widget/TextView;

    .line 123
    sget v5, Laal;->np:I

    .line 124
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/widget/Button;

    .line 125
    sget v5, Laal;->nk:I

    .line 126
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Landroid/widget/Button;

    .line 127
    sget v5, Laal;->nm:I

    .line 128
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Landroid/widget/Button;

    .line 129
    sget v5, Laal;->nj:I

    .line 130
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Landroid/widget/Button;

    .line 131
    sget v5, Laal;->nl:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Landroid/widget/LinearLayout;

    .line 133
    sget v5, Laal;->ni:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Landroid/widget/LinearLayout;

    .line 136
    move-object/from16 v0, p0

    iget-object v5, v0, Lcqb;->aj:Lhpu;

    .line 137
    invoke-interface {v5}, Lhpu;->a()I

    move-result v5

    .line 136
    invoke-static {v5}, Ldvd;->e(I)Lbfd;

    move-result-object v17

    .line 138
    invoke-static/range {v17 .. v17}, Ldvd;->a(Lbfd;)Lbfd;

    move-result-object v20

    .line 139
    move-object/from16 v0, p0

    iget-object v9, v0, Lcqb;->am:Lill;

    .line 1065
    invoke-static {v7}, Lbzq;->a(Ljava/lang/String;)Z

    move-result v21

    .line 1068
    const-class v5, Lawo;

    invoke-static {v9, v5}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lawo;

    .line 1069
    const-class v22, Leot;

    move-object/from16 v0, v22

    invoke-static {v9, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Leot;

    .line 1070
    invoke-virtual/range {v17 .. v17}, Lbfd;->g()I

    move-result v22

    move/from16 v0, v22

    invoke-interface {v9, v0}, Leot;->a(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1071
    sget v9, Lcpz;->a:I

    .line 141
    :goto_0
    sget v5, Lcpz;->b:I

    if-eq v9, v5, :cond_0

    sget v5, Lcpz;->a:I

    if-ne v9, v5, :cond_4

    :cond_0
    const/4 v5, 0x1

    .line 144
    :goto_1
    if-eqz v5, :cond_5

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcqb;->am:Lill;

    move-object/from16 v17, v0

    sget v20, Laen;->jc:I

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1293
    :goto_2
    sget-object v10, Lcqg;->a:[I

    invoke-virtual {v6}, Lcpx;->ordinal()I

    move-result v17

    aget v10, v10, v17

    packed-switch v10, :pswitch_data_0

    .line 1300
    sget v10, Laal;->nf:I

    .line 151
    :goto_3
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2237
    if-eqz v5, :cond_9

    .line 2238
    sget-object v3, Lcqg;->a:[I

    invoke-virtual {v6}, Lcpx;->ordinal()I

    move-result v10

    aget v3, v3, v10

    packed-switch v3, :pswitch_data_1

    .line 2246
    move-object/from16 v0, p0

    iget-object v3, v0, Lcqb;->am:Lill;

    sget v10, Laen;->jm:I

    invoke-virtual {v3, v10}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    new-instance v3, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v3}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 155
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 156
    const/4 v3, 0x1

    invoke-virtual {v13, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 157
    const/4 v3, 0x1

    invoke-virtual {v12, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 158
    const/4 v3, 0x1

    invoke-virtual {v14, v3}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 160
    invoke-static {v7}, Lbzq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 161
    sget-object v3, Lcpx;->f:Lcpx;

    if-ne v6, v3, :cond_c

    invoke-static {v7}, Lbzq;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 162
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    new-instance v3, Lcqc;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcqc;-><init>(Lcqb;ZLcpx;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v12, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    new-instance v3, Lcqd;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcqd;-><init>(Lcqb;Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 212
    :goto_5
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcqb;->getActivity()Lba;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 213
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcqb;->an:Lilh;

    const-class v7, Lhpu;

    .line 2309
    invoke-virtual {v3, v7}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhpu;

    invoke-interface {v3}, Lhpu;->a()I

    move-result v3

    .line 2308
    invoke-static {v3}, Ldvd;->e(I)Lbfd;

    move-result-object v3

    .line 2310
    if-eqz v5, :cond_d

    .line 2311
    sget-object v5, Lcqg;->a:[I

    invoke-virtual {v6}, Lcpx;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 215
    :goto_6
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 1075
    :cond_1
    invoke-static {}, Ldvd;->h()[I

    move-result-object v9

    array-length v9, v9

    if-lez v9, :cond_2

    const/4 v9, 0x1

    .line 1077
    :goto_7
    if-nez v21, :cond_3

    .line 1078
    invoke-virtual/range {v17 .. v17}, Lbfd;->g()I

    move-result v17

    move/from16 v0, v17

    invoke-interface {v5, v0}, Lawo;->d(I)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v9, :cond_3

    if-nez v20, :cond_3

    .line 1081
    sget v9, Lcpz;->b:I

    goto/16 :goto_0

    .line 1075
    :cond_2
    const/4 v9, 0x0

    goto :goto_7

    .line 1083
    :cond_3
    sget v9, Lcpz;->c:I

    goto/16 :goto_0

    .line 141
    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1271
    :cond_5
    invoke-static {v7}, Lbzq;->a(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcqb;->am:Lill;

    move-object/from16 v17, v0

    sget v20, Laen;->jg:I

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 148
    :goto_8
    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1275
    :cond_6
    invoke-static {v7}, Lbzq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_8

    .line 1276
    sget-object v17, Lcpx;->f:Lcpx;

    move-object/from16 v0, v17

    if-ne v6, v0, :cond_7

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcqb;->am:Lill;

    move-object/from16 v17, v0

    sget v20, Laen;->ji:I

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_8

    .line 1279
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcqb;->am:Lill;

    move-object/from16 v17, v0

    sget v20, Laen;->jo:I

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto :goto_8

    .line 1285
    :cond_8
    const-string v17, "Babel_OffnetworkInvite"

    const-string v20, "Couldn\'t get valid invite message"

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lezi;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1286
    const/16 v17, 0x0

    goto :goto_8

    .line 1295
    :pswitch_0
    sget v10, Laal;->ng:I

    goto/16 :goto_3

    .line 1298
    :pswitch_1
    sget v10, Laal;->nh:I

    goto/16 :goto_3

    .line 2240
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcqb;->am:Lill;

    sget v10, Laen;->jl:I

    invoke-virtual {v3, v10}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 2242
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcqb;->am:Lill;

    sget v10, Laen;->jn:I

    invoke-virtual {v3, v10}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 2244
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcqb;->am:Lill;

    sget v10, Laen;->jk:I

    invoke-virtual {v3, v10}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 2250
    :cond_9
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    move-object v3, v7

    :goto_9
    invoke-static {v3}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2251
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcqb;->am:Lill;

    sget v10, Laen;->js:I

    invoke-virtual {v3, v10}, Lill;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    :cond_a
    move-object/from16 v3, v18

    .line 2250
    goto :goto_9

    .line 2254
    :cond_b
    sget-object v10, Lcqg;->a:[I

    invoke-virtual {v6}, Lcpx;->ordinal()I

    move-result v17

    aget v10, v10, v17

    packed-switch v10, :pswitch_data_3

    .line 2262
    move-object/from16 v0, p0

    iget-object v10, v0, Lcqb;->am:Lill;

    sget v17, Laen;->jq:I

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    aput-object v3, v18, v20

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 2256
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcqb;->am:Lill;

    sget v17, Laen;->jp:I

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    aput-object v3, v18, v20

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 2258
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcqb;->am:Lill;

    sget v17, Laen;->jr:I

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    aput-object v3, v18, v20

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 2260
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcqb;->am:Lill;

    sget v17, Laen;->je:I

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    aput-object v3, v18, v20

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lill;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 194
    :cond_c
    const/16 v3, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    new-instance v3, Lcqe;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcqe;-><init>(Lcqb;ZLcpx;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    new-instance v3, Lcqf;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcqf;-><init>(Lcqb;)V

    invoke-virtual {v13, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 2313
    :pswitch_8
    const/16 v5, 0x747

    invoke-static {v3, v5}, Laal;->a(Lbfd;I)V

    goto/16 :goto_6

    .line 2317
    :pswitch_9
    const/16 v5, 0x748

    invoke-static {v3, v5}, Laal;->a(Lbfd;I)V

    goto/16 :goto_6

    .line 2321
    :pswitch_a
    const/16 v5, 0x746

    invoke-static {v3, v5}, Laal;->a(Lbfd;I)V

    goto/16 :goto_6

    .line 2325
    :pswitch_b
    const/16 v5, 0xa3c

    invoke-static {v3, v5}, Laal;->a(Lbfd;I)V

    goto/16 :goto_6

    .line 2329
    :pswitch_c
    const/16 v5, 0x91e

    invoke-static {v3, v5}, Laal;->a(Lbfd;I)V

    goto/16 :goto_6

    .line 2333
    :pswitch_d
    const/16 v5, 0x98a

    invoke-static {v3, v5}, Laal;->a(Lbfd;I)V

    goto/16 :goto_6

    .line 2337
    :cond_d
    sget-object v5, Lcqg;->a:[I

    invoke-virtual {v6}, Lcpx;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_4

    goto/16 :goto_6

    .line 2343
    :pswitch_e
    const/16 v5, 0x741

    invoke-static {v3, v5}, Laal;->a(Lbfd;I)V

    goto/16 :goto_6

    .line 2339
    :pswitch_f
    const/16 v5, 0x740

    invoke-static {v3, v5}, Laal;->a(Lbfd;I)V

    goto/16 :goto_6

    .line 2347
    :pswitch_10
    const/16 v5, 0x73e

    invoke-static {v3, v5}, Laal;->a(Lbfd;I)V

    goto/16 :goto_6

    .line 2351
    :pswitch_11
    const/16 v5, 0xa3a

    invoke-static {v3, v5}, Laal;->a(Lbfd;I)V

    goto/16 :goto_6

    .line 2355
    :pswitch_12
    const/16 v5, 0x8d7

    invoke-static {v3, v5}, Laal;->a(Lbfd;I)V

    goto/16 :goto_6

    .line 2359
    :pswitch_13
    const/16 v5, 0x91c

    invoke-static {v3, v5}, Laal;->a(Lbfd;I)V

    goto/16 :goto_6

    .line 1293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 2238
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2311
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 2254
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2337
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method protected e(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0, p1}, Lime;->e(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcqb;->an:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    iput-object v0, p0, Lcqb;->aj:Lhpu;

    .line 90
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 94
    invoke-super {p0}, Lime;->onStart()V

    .line 95
    invoke-virtual {p0}, Lcqb;->c()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    const/16 v0, 0x15e

    .line 97
    invoke-virtual {p0}, Lcqb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 98
    const/16 v0, 0x258

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcqb;->getActivity()Lba;

    move-result-object v1

    invoke-virtual {p0}, Lcqb;->c()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 100
    invoke-static {v1, v2, v0}, Lewz;->a(Landroid/app/Activity;Landroid/view/Window;I)V

    .line 103
    :cond_1
    return-void
.end method
