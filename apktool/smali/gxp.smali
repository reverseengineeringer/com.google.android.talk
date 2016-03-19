.class public final Lgxp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GR::",
        "Lavb;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lfij;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfij",
            "<TR;>;"
        }
    .end annotation
.end field

.field public final b:Lgyh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgyh",
            "<TGR;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lfij;Lgyh;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfij",
            "<TR;>;",
            "Lgyh",
            "<TGR;TR;>;)V"
        }
    .end annotation

    .prologue
    .line 2023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2024
    iput-object p1, p0, Lgxp;->a:Lfij;

    .line 2025
    iput-object p2, p0, Lgxp;->b:Lgyh;

    .line 2026
    return-void
.end method


# virtual methods
.method public a(Lgxq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgxq",
            "<TGR;>;)V"
        }
    .end annotation

    .prologue
    .line 1045
    iget-object v0, p0, Lgxp;->a:Lfij;

    new-instance v1, Lgyb;

    iget-object v2, p0, Lgxp;->b:Lgyh;

    invoke-direct {v1, p1, v2}, Lgyb;-><init>(Lgxq;Lgyh;)V

    invoke-interface {v0, v1}, Lfij;->a(Lfin;)V

    .line 1047
    return-void
.end method
