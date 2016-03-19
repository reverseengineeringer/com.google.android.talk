.class final Lcpo;
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
    .line 96
    iput-object p1, p0, Lcpo;->c:Lcpm;

    iput-object p2, p0, Lcpo;->a:Lhba;

    iput-object p3, p0, Lcpo;->b:Lhpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcpo;->a:Lhba;

    iget-object v1, p0, Lcpo;->b:Lhpu;

    .line 100
    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-interface {v0, v1}, Lhba;->a(I)Lhaw;

    move-result-object v0

    const/16 v1, 0xbd8

    .line 101
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 102
    invoke-interface {v0}, Lhax;->d()V

    .line 104
    iget-object v0, p0, Lcpo;->c:Lcpm;

    .line 1033
    iget-object v0, v0, Lcpm;->aj:Lcps;

    .line 104
    iget-object v1, p0, Lcpo;->b:Lhpu;

    invoke-interface {v1}, Lhpu;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcps;->c(I)V

    .line 105
    iget-object v0, p0, Lcpo;->c:Lcpm;

    invoke-virtual {v0}, Lcpm;->a()V

    .line 106
    return-void
.end method
