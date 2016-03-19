.class public final Lblq;
.super Lbll;
.source "SourceFile"


# direct methods
.method public constructor <init>(Liog;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lbll;-><init>(Liog;)V

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lblf;
    .locals 3

    .prologue
    .line 19
    new-instance v0, Lblo;

    iget-object v1, p0, Lblq;->a:Landroid/content/Context;

    iget-object v2, p0, Lblq;->b:Liog;

    invoke-direct {v0, v1, v2}, Lblo;-><init>(Landroid/content/Context;Liog;)V

    return-object v0
.end method
