.class public final Lcys;
.super Ldlv;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "android.permission.WRITE_CONTACTS"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcys;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 35
    sget v0, Laal;->nP:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget v3, Lfkr;->e:I

    aput v3, v1, v2

    const/4 v2, 0x1

    sget v3, Lfkr;->f:I

    aput v3, v1, v2

    invoke-direct {p0, v0, v1}, Ldlv;-><init>(I[I)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcys;I)V
    .locals 0

    .prologue
    .line 27
    invoke-super {p0, p1}, Ldlv;->a(I)V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget v0, Laal;->nS:I

    invoke-virtual {p0, v0}, Lcys;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected a(I)V
    .locals 4

    .prologue
    .line 75
    iput p1, p0, Lcys;->a:I

    .line 76
    iget-object v0, p0, Lcys;->context:Lill;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "contacts_rationale_shown"

    const/4 v2, 0x1

    .line 78
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    sget v0, Lfkr;->f:I

    if-ne p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcys;->binder:Lilh;

    const-class v1, Ldck;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldck;

    .line 82
    new-instance v1, Ldco;

    sget v2, Lfkr;->c:I

    const/16 v3, 0xa5e

    invoke-direct {v1, v2, v3}, Ldco;-><init>(II)V

    sget-object v2, Lcys;->b:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ldck;->a(Ldco;Ljava/util/List;)V

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-super {p0, p1}, Ldlv;->a(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 41
    invoke-super {p0, p1}, Ldlv;->onCreate(Landroid/os/Bundle;)V

    .line 42
    iget-object v0, p0, Lcys;->binder:Lilh;

    const-class v1, Ldck;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldck;

    .line 43
    sget v1, Lfkr;->c:I

    new-instance v2, Lcyt;

    invoke-direct {v2, p0}, Lcyt;-><init>(Lcys;)V

    invoke-interface {v0, v1, v2}, Ldck;->a(ILdcl;)V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Ldlv;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 58
    sget v0, Lfkr;->e:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    sget v2, Laal;->nT:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 60
    sget v0, Lfkr;->f:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 61
    sget v2, Laal;->nR:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 62
    sget v0, Lfkr;->d:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    iget-object v2, p0, Lcys;->context:Lill;

    invoke-virtual {v2}, Lill;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Laal;->nQ:I

    invoke-static {v0, v2, v3}, Laal;->a(Landroid/widget/ImageView;Landroid/content/res/Resources;I)V

    .line 65
    return-object v1
.end method
