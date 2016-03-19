.class final Lxy;
.super Lxv;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lxv;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lxz;

    invoke-direct {v0, p0}, Lxz;-><init>(Lxy;)V

    sput-object v0, Laas;->c:Laat;

    .line 34
    return-void
.end method
