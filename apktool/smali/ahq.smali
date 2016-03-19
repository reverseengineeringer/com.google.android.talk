.class final Lahq;
.super Lauw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauw;"
    }
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lauw;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lauv;)V
    .locals 2

    .prologue
    .line 263
    iget v0, p0, Lahq;->b:I

    iget v1, p0, Lahq;->a:I

    invoke-interface {p1, v0, v1}, Lauv;->a(II)V

    .line 264
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 259
    return-void
.end method
