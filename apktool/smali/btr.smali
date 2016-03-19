.class final Lbtr;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lbto;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lbts;

    invoke-direct {v0, p0}, Lbts;-><init>(Lbtr;)V

    return-object v0
.end method
