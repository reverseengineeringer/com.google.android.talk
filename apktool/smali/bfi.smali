.class final Lbfi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhqh;


# instance fields
.field final synthetic a:Lbff;


# direct methods
.method constructor <init>(Lbff;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lbfi;->a:Lbff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    const-string v0, "is_gplus_user_to_is_google_plus"

    return-object v0
.end method

.method public a(Landroid/content/Context;Lhqe;)V
    .locals 2

    .prologue
    .line 373
    const-string v0, "is_gplus_user"

    invoke-interface {p2, v0}, Lhqe;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    const-string v0, "is_google_plus"

    const-string v1, "is_gplus_user"

    invoke-interface {p2, v1}, Lhqe;->d(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p2, v0, v1}, Lhqe;->c(Ljava/lang/String;Z)Lhqe;

    .line 375
    const-string v0, "is_gplus_user"

    invoke-interface {p2, v0}, Lhqe;->i(Ljava/lang/String;)Lhqe;

    .line 377
    :cond_0
    return-void
.end method
