.class final Lkry;
.super Lksr;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lkrw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkrw",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lksr;-><init>(Lksm;)V

    .line 334
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    new-instance v0, Lkrx;

    invoke-direct {v0}, Lkrx;-><init>()V

    .line 339
    invoke-virtual {p0, v0}, Lkry;->a(Lkso;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
