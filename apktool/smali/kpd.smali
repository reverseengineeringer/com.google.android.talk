.class final Lkpd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lknj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lknj",
        "<TV;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkpc;


# direct methods
.method constructor <init>(Lkpc;)V
    .locals 0

    .prologue
    .line 3560
    iput-object p1, p0, Lkpd;->a:Lkpc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 3563
    iget-object v0, p0, Lkpd;->a:Lkpc;

    invoke-virtual {v0, p1}, Lkpc;->b(Ljava/lang/Object;)Z

    .line 3564
    return-object p1
.end method
