.class final Ledy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ledw;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ledx;


# direct methods
.method constructor <init>(Ledx;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Ledy;->b:Ledx;

    iput-object p2, p0, Ledy;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Ledy;->b:Ledx;

    .line 1022
    iget-object v0, v0, Ledx;->a:Lbwl;

    .line 70
    iget-object v1, p0, Ledy;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lbwl;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Ledy;->b:Ledx;

    .line 2022
    iget-object v0, v0, Ledx;->b:Lbwl;

    .line 80
    iget-object v1, p0, Ledy;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lbwl;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
