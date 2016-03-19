.class final Lcyf;
.super Lcyd;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcyb;


# direct methods
.method constructor <init>(Lcyb;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lcyf;->b:Lcyb;

    invoke-direct {p0, p1}, Lcyd;-><init>(Lcyb;)V

    return-void
.end method


# virtual methods
.method public a(Leys;Lexs;ZLbhs;Z)V
    .locals 2

    .prologue
    .line 1188
    const-string v0, "Expected null"

    invoke-static {v0, p2}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 652
    if-eqz p3, :cond_0

    .line 653
    iget-object v0, p0, Lcyf;->b:Lcyb;

    iget-object v0, v0, Lcyb;->v:Ldl;

    invoke-virtual {p1}, Leys;->d()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldl;->a(Landroid/graphics/Bitmap;)Ldl;

    .line 655
    :cond_0
    invoke-super/range {p0 .. p5}, Lcyd;->a(Leys;Lexs;ZLbhs;Z)V

    .line 656
    return-void
.end method
