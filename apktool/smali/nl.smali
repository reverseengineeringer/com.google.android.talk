.class final Lnl;
.super Lnj;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lnj;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lni;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 88
    new-instance v0, Lnp;

    invoke-direct {v0, p0, p1}, Lnp;-><init>(Lnl;Lni;)V

    .line 1039
    new-instance v1, Lno;

    invoke-direct {v1, v0}, Lno;-><init>(Lnp;)V

    .line 88
    return-object v1
.end method
