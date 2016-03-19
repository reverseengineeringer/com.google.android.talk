.class public final Lcmi;
.super Lhpj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhpj",
        "<",
        "Lhpl;",
        ">;"
    }
.end annotation


# instance fields
.field aj:Lclp;

.field final ak:Landroid/os/Handler;

.field al:Lhpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lhpj;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcmi;->ak:Landroid/os/Handler;

    .line 53
    return-void
.end method


# virtual methods
.method a(Lhpn;Lhpn;Lclq;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 150
    invoke-virtual {p0}, Lcmi;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 151
    sget v1, Laal;->lN:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 152
    sget v2, Laal;->lO:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 153
    sget v3, Laal;->lS:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 154
    sget v4, Laal;->lV:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 155
    sget v5, Laal;->lR:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 156
    sget v6, Laal;->lU:I

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 158
    sget-object v6, Lclq;->c:Lclq;

    if-ne p3, v6, :cond_1

    .line 160
    invoke-virtual {p1, v1}, Lhpn;->a(Landroid/content/res/ColorStateList;)Lhpn;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v5}, Lhpn;->a(Landroid/graphics/drawable/Drawable;)Lhpn;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v2}, Lhpn;->b(Landroid/graphics/drawable/Drawable;)Lhpn;

    .line 163
    invoke-virtual {p2, v7}, Lhpn;->a(Landroid/content/res/ColorStateList;)Lhpn;

    move-result-object v0

    invoke-virtual {v0, v4}, Lhpn;->a(Landroid/graphics/drawable/Drawable;)Lhpn;

    move-result-object v0

    invoke-virtual {v0, v7}, Lhpn;->b(Landroid/graphics/drawable/Drawable;)Lhpn;

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    sget-object v4, Lclq;->d:Lclq;

    if-ne p3, v4, :cond_0

    .line 165
    invoke-virtual {p2, v1}, Lhpn;->a(Landroid/content/res/ColorStateList;)Lhpn;

    move-result-object v1

    invoke-virtual {v1, v0}, Lhpn;->a(Landroid/graphics/drawable/Drawable;)Lhpn;

    move-result-object v0

    invoke-virtual {v0, v2}, Lhpn;->b(Landroid/graphics/drawable/Drawable;)Lhpn;

    .line 166
    invoke-virtual {p1, v7}, Lhpn;->a(Landroid/content/res/ColorStateList;)Lhpn;

    move-result-object v0

    invoke-virtual {v0, v3}, Lhpn;->a(Landroid/graphics/drawable/Drawable;)Lhpn;

    move-result-object v0

    invoke-virtual {v0, v7}, Lhpn;->b(Landroid/graphics/drawable/Drawable;)Lhpn;

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0, p1}, Lhpj;->onAttach(Landroid/app/Activity;)V

    .line 58
    const-class v0, Lclp;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lclp;

    iput-object v0, p0, Lcmi;->aj:Lclp;

    .line 59
    return-void
.end method

.method protected q()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected r()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lcmi;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laen;->ij:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected s()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcmj;

    invoke-direct {v0, p0}, Lcmj;-><init>(Lcmi;)V

    return-object v0
.end method

.method protected synthetic t()Landroid/widget/ListAdapter;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1073
    iget-object v0, p0, Lcmi;->aj:Lclp;

    invoke-interface {v0}, Lclp;->a()Lclq;

    move-result-object v1

    .line 1074
    invoke-virtual {p0}, Lcmi;->getActivity()Lba;

    move-result-object v0

    invoke-virtual {v0}, Lba;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1076
    iget-object v0, p0, Lcmi;->aj:Lclp;

    invoke-interface {v0}, Lclp;->c()Ljava/lang/String;

    move-result-object v0

    .line 1078
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1079
    sget v0, Laen;->is:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1081
    :goto_0
    sget v3, Laen;->it:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1082
    sget v4, Laen;->im:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1084
    new-instance v5, Lhpn;

    invoke-direct {v5, v6, v0}, Lhpn;-><init>(ILjava/lang/String;)V

    .line 1086
    new-instance v0, Lhpn;

    invoke-direct {v0, v7, v3}, Lhpn;-><init>(ILjava/lang/String;)V

    .line 1087
    new-instance v3, Lhpn;

    const/4 v6, 0x2

    invoke-direct {v3, v6, v4}, Lhpn;-><init>(ILjava/lang/String;)V

    sget v4, Laal;->lP:I

    .line 1089
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Lhpn;->a(Landroid/graphics/drawable/Drawable;)Lhpn;

    move-result-object v2

    .line 1090
    invoke-virtual {p0, v5, v0, v1}, Lcmi;->a(Lhpn;Lhpn;Lclq;)V

    .line 1092
    new-instance v1, Lhpl;

    invoke-virtual {p0}, Lcmi;->getActivity()Lba;

    move-result-object v3

    invoke-direct {v1, v3}, Lhpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcmi;->al:Lhpl;

    .line 1093
    iget-object v1, p0, Lcmi;->al:Lhpl;

    invoke-virtual {v1, v5}, Lhpl;->add(Ljava/lang/Object;)V

    .line 1094
    iget-object v1, p0, Lcmi;->al:Lhpl;

    invoke-virtual {v1, v0}, Lhpl;->add(Ljava/lang/Object;)V

    .line 1095
    iget-object v0, p0, Lcmi;->al:Lhpl;

    new-instance v1, Lhpo;

    invoke-direct {v1}, Lhpo;-><init>()V

    invoke-virtual {v0, v1}, Lhpl;->add(Ljava/lang/Object;)V

    .line 1096
    iget-object v0, p0, Lcmi;->al:Lhpl;

    invoke-virtual {v0, v2}, Lhpl;->add(Ljava/lang/Object;)V

    .line 1097
    iget-object v0, p0, Lcmi;->al:Lhpl;

    .line 33
    return-object v0

    .line 1080
    :cond_0
    sget v3, Laen;->ir:I

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
