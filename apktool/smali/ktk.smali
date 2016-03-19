.class final Lktk;
.super Lkru;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkru",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lktj;


# direct methods
.method constructor <init>(Lktj;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lktk;->a:Lktj;

    invoke-direct {p0}, Lkru;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic b()Lkrz;
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lktk;->a:Lktj;

    .line 354
    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lktk;->a:Lktj;

    invoke-virtual {v0, p1}, Lktj;->a(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
