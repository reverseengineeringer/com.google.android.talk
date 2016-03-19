.class final Lcpn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lhba;

.field final synthetic b:Lhpu;

.field final synthetic c:Lcpm;


# direct methods
.method constructor <init>(Lcpm;Lhba;Lhpu;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcpn;->c:Lcpm;

    iput-object p2, p0, Lcpn;->a:Lhba;

    iput-object p3, p0, Lcpn;->b:Lhpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcpn;->a:Lhba;

    iget-object v1, p0, Lcpn;->b:Lhpu;

    .line 79
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0xbd9

    .line 80
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 81
    invoke-interface {v0}, Lhax;->d()V

    .line 83
    iget-object v0, p0, Lcpn;->c:Lcpm;

    .line 1033
    iget-object v0, v0, Lcpm;->aj:Lcps;

    .line 83
    iget-object v1, p0, Lcpn;->b:Lhpu;

    .line 84
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    .line 83
    invoke-virtual {v0, v1}, Lcps;->b(I)V

    .line 85
    iget-object v0, p0, Lcpn;->c:Lcpm;

    invoke-virtual {v0}, Lcpm;->a()V

    .line 86
    return-void
.end method
