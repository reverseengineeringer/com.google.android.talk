.class public Llas;
.super Llar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Llar",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final a:Llbb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llbb",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Llbb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llbb",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Llar;-><init>()V

    .line 59
    invoke-static {p1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llbb;

    iput-object v0, p0, Llas;->a:Llbb;

    .line 60
    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Llas;->a:Llbb;

    .line 54
    return-object v0
.end method

.method protected final b()Llbb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llbb",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Llas;->a:Llbb;

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Llas;->a:Llbb;

    .line 54
    return-object v0
.end method
