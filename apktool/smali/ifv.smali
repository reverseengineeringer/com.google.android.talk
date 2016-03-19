.class final Lifv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Limk;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lifq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const-class v0, Lifq;

    return-object v0
.end method

.method public a(Lav;Liog;Lilh;)V
    .locals 2

    .prologue
    .line 56
    const-class v0, Lifq;

    new-instance v1, Lifr;

    invoke-direct {v1, p2}, Lifr;-><init>(Liog;)V

    invoke-virtual {p3, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 58
    return-void
.end method
