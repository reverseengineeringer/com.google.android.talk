.class public final Leok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liov;
.implements Lioz;


# direct methods
.method public constructor <init>(Liog;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p1, p0}, Liog;->a(Lioz;)Lioz;

    .line 13
    return-void
.end method


# virtual methods
.method public X_()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Ldvd;->l()Lbfd;

    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    invoke-static {v0}, Leny;->b(Lbfd;)V

    .line 21
    :cond_0
    return-void
.end method
