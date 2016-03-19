.class final Lnk;
.super Lnj;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lnj;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lni;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lnn;

    invoke-direct {v0, p0, p1}, Lnn;-><init>(Lnk;Lni;)V

    .line 1038
    new-instance v1, Lnm;

    invoke-direct {v1, v0}, Lnm;-><init>(Lnn;)V

    .line 47
    return-object v1
.end method
