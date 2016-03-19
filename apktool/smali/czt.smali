.class public final Lczt;
.super Lhpj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhpj",
        "<",
        "Lczq;",
        ">;"
    }
.end annotation


# instance fields
.field aj:Lill;

.field ak:Lilh;

.field al:Liog;

.field am:Lbfd;

.field an:Lbjp;

.field ao:Laxq;

.field ap:Lbdy;

.field aq:Lbkw;

.field private final ar:Lbjq;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lhpj;-><init>()V

    .line 64
    new-instance v0, Lczu;

    invoke-direct {v0, p0}, Lczu;-><init>(Lczt;)V

    iput-object v0, p0, Lczt;->ar:Lbjq;

    .line 121
    new-instance v0, Liog;

    invoke-direct {v0}, Liog;-><init>()V

    iput-object v0, p0, Lczt;->al:Liog;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    .prologue
    .line 176
    invoke-super {p0, p1}, Lhpj;->onAttach(Landroid/app/Activity;)V

    .line 178
    invoke-virtual {p0}, Lczt;->getParentFragment()Lav;

    move-result-object v0

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Lav;)Lilh;

    move-result-object v0

    .line 179
    new-instance v1, Lill;

    invoke-direct {v1, p1, v0}, Lill;-><init>(Landroid/content/Context;Lilh;)V

    iput-object v1, p0, Lczt;->aj:Lill;

    .line 180
    iget-object v0, p0, Lczt;->aj:Lill;

    invoke-virtual {v0}, Lill;->getBinder()Lilh;

    move-result-object v0

    iput-object v0, p0, Lczt;->ak:Lilh;

    .line 181
    iget-object v0, p0, Lczt;->al:Liog;

    new-instance v1, Lczv;

    invoke-direct {v1, p0}, Lczv;-><init>(Lczt;)V

    invoke-virtual {v0, v1}, Liog;->a(Liol;)Liol;

    .line 189
    iget-object v0, p0, Lczt;->ak:Lilh;

    const-class v1, Lbjq;

    iget-object v2, p0, Lczt;->ar:Lbjq;

    invoke-virtual {v0, v1, v2}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 191
    iget-object v0, p0, Lczt;->ak:Lilh;

    const-class v1, Lhpu;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    invoke-static {v0}, Ldvd;->e(I)Lbfd;

    move-result-object v0

    iput-object v0, p0, Lczt;->am:Lbfd;

    .line 192
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 142
    invoke-super {p0, p1}, Lhpj;->onCreate(Landroid/os/Bundle;)V

    .line 144
    if-nez p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lczt;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "action_sheet_hangouts_contact"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbdy;

    iput-object v0, p0, Lczt;->ap:Lbdy;

    .line 154
    :goto_0
    iget-object v0, p0, Lczt;->aq:Lbkw;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lczt;->ak:Lilh;

    const-class v1, Lbjr;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjr;

    iget-object v1, p0, Lczt;->aj:Lill;

    iget-object v2, p0, Lczt;->al:Liog;

    const/4 v3, 0x0

    iget-object v5, p0, Lczt;->ao:Laxq;

    iget-object v6, p0, Lczt;->aq:Lbkw;

    move-object v4, p0

    invoke-interface/range {v0 .. v6}, Lbjr;->a(Landroid/content/Context;Liog;ILav;Laxq;Lbkw;)Lbjp;

    move-result-object v0

    iput-object v0, p0, Lczt;->an:Lbjp;

    .line 162
    :goto_1
    iget-object v0, p0, Lczt;->al:Liog;

    invoke-virtual {v0, p1}, Liog;->c(Landroid/os/Bundle;)V

    .line 163
    return-void

    .line 147
    :cond_0
    const-string v0, "action_sheet_hangouts_contact"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbdy;

    iput-object v0, p0, Lczt;->ap:Lbdy;

    .line 148
    const-string v0, "action_sheet_edit_participants_model"

    .line 149
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Laxq;

    iput-object v0, p0, Lczt;->ao:Laxq;

    .line 150
    const-string v0, "action_sheet_conversation_type"

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lbkw;

    iput-object v0, p0, Lczt;->aq:Lbkw;

    goto :goto_0

    .line 159
    :cond_1
    iget-object v0, p0, Lczt;->am:Lbfd;

    const/16 v1, 0x9c8

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 205
    invoke-super {p0}, Lhpj;->onDestroy()V

    .line 206
    iget-object v0, p0, Lczt;->al:Liog;

    invoke-virtual {v0}, Liog;->c()V

    .line 207
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 196
    invoke-super {p0, p1}, Lhpj;->onDismiss(Landroid/content/DialogInterface;)V

    .line 197
    iget-object v0, p0, Lczt;->aq:Lbkw;

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lczt;->am:Lbfd;

    const/16 v1, 0x9c9

    invoke-static {v0, v1}, Laal;->a(Lbfd;I)V

    .line 201
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 167
    const-string v0, "action_sheet_hangouts_contact"

    iget-object v1, p0, Lczt;->ap:Lbdy;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 168
    const-string v0, "action_sheet_edit_participants_model"

    iget-object v1, p0, Lczt;->ao:Laxq;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 169
    const-string v0, "action_sheet_conversation_type"

    iget-object v1, p0, Lczt;->aq:Lbkw;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 171
    iget-object v0, p0, Lczt;->al:Liog;

    invoke-virtual {v0, p1}, Liog;->d(Landroid/os/Bundle;)V

    .line 172
    return-void
.end method

.method protected q()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method protected r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    const/4 v0, 0x0

    return-object v0
.end method

.method protected s()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 276
    new-instance v0, Lczw;

    invoke-direct {v0, p0}, Lczw;-><init>(Lczt;)V

    return-object v0
.end method

.method protected synthetic t()Landroid/widget/ListAdapter;
    .locals 13

    .prologue
    .line 1211
    invoke-virtual {p0}, Lczt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1212
    sget v0, Laal;->oc:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 1213
    sget v0, Laal;->od:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1215
    new-instance v3, Lczq;

    iget-object v4, p0, Lczt;->aj:Lill;

    invoke-direct {v3, v4}, Lczq;-><init>(Landroid/content/Context;)V

    .line 1216
    new-instance v4, Lezy;

    iget-object v5, p0, Lczt;->aj:Lill;

    iget-object v6, p0, Lczt;->ap:Lbdy;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lezy;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 1218
    sget v5, Lfii;->e:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1219
    sget v6, Lfii;->k:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1220
    sget v7, Lfii;->h:I

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1221
    sget v8, Lfii;->m:I

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1223
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v0, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1224
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v0, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1225
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v0, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1226
    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v0, v10}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1228
    new-instance v0, Lczz;

    iget-object v9, p0, Lczt;->ap:Lbdy;

    invoke-direct {v0, v9}, Lczz;-><init>(Lbdy;)V

    .line 1229
    invoke-virtual {v3, v0}, Lczq;->add(Ljava/lang/Object;)V

    .line 1233
    iget-object v0, p0, Lczt;->ak:Lilh;

    const-class v9, Lawo;

    invoke-virtual {v0, v9}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lawo;

    .line 1234
    iget-object v9, p0, Lczt;->am:Lbfd;

    invoke-virtual {v9}, Lbfd;->g()I

    move-result v9

    invoke-interface {v0, v9}, Lawo;->d(I)Z

    move-result v0

    .line 1235
    invoke-virtual {v4}, Lezy;->b()Z

    move-result v9

    .line 1236
    invoke-virtual {v4}, Lezy;->a()Z

    move-result v4

    .line 1238
    if-eqz v9, :cond_0

    .line 1239
    new-instance v10, Lhpn;

    sget v11, Lczy;->a:I

    .line 1240
    add-int/lit8 v11, v11, -0x1

    sget v12, Laen;->jx:I

    .line 1241
    invoke-virtual {v1, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lhpn;-><init>(ILjava/lang/String;)V

    .line 1242
    invoke-virtual {v10, v5}, Lhpn;->a(Landroid/graphics/drawable/Drawable;)Lhpn;

    move-result-object v5

    .line 1243
    invoke-virtual {v5, v2}, Lhpn;->a(I)Lhpn;

    move-result-object v5

    .line 1244
    invoke-virtual {v3, v5}, Lczq;->add(Ljava/lang/Object;)V

    .line 1247
    :cond_0
    if-nez v9, :cond_1

    if-eqz v4, :cond_2

    .line 1248
    :cond_1
    new-instance v4, Lhpn;

    sget v5, Lczy;->c:I

    add-int/lit8 v5, v5, -0x1

    sget v10, Laen;->jR:I

    .line 1249
    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v5, v10}, Lhpn;-><init>(ILjava/lang/String;)V

    .line 1250
    invoke-virtual {v4, v6}, Lhpn;->a(Landroid/graphics/drawable/Drawable;)Lhpn;

    move-result-object v4

    .line 1251
    invoke-virtual {v4, v2}, Lhpn;->a(I)Lhpn;

    move-result-object v4

    .line 1252
    invoke-virtual {v3, v4}, Lczq;->add(Ljava/lang/Object;)V

    .line 1255
    :cond_2
    if-eqz v9, :cond_3

    .line 1256
    new-instance v4, Lhpn;

    sget v5, Lczy;->d:I

    add-int/lit8 v5, v5, -0x1

    sget v6, Laen;->jQ:I

    .line 1257
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lhpn;-><init>(ILjava/lang/String;)V

    .line 1258
    invoke-virtual {v4, v7}, Lhpn;->a(Landroid/graphics/drawable/Drawable;)Lhpn;

    move-result-object v4

    .line 1259
    invoke-virtual {v4, v2}, Lhpn;->a(I)Lhpn;

    move-result-object v4

    .line 1260
    invoke-virtual {v3, v4}, Lczq;->add(Ljava/lang/Object;)V

    .line 1263
    :cond_3
    if-eqz v0, :cond_4

    iget-object v0, p0, Lczt;->ap:Lbdy;

    invoke-virtual {v0}, Lbdy;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1264
    new-instance v0, Lhpn;

    sget v4, Lczy;->b:I

    add-int/lit8 v4, v4, -0x1

    sget v5, Laen;->jP:I

    .line 1265
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lhpn;-><init>(ILjava/lang/String;)V

    .line 1266
    invoke-virtual {v0, v8}, Lhpn;->a(Landroid/graphics/drawable/Drawable;)Lhpn;

    move-result-object v0

    .line 1267
    invoke-virtual {v0, v2}, Lhpn;->a(I)Lhpn;

    move-result-object v0

    .line 1268
    invoke-virtual {v3, v0}, Lczq;->add(Ljava/lang/Object;)V

    .line 52
    :cond_4
    return-object v3
.end method
