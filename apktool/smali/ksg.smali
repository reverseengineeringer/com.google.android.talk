.class final Lksg;
.super Lkqk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkqk",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lksf;


# direct methods
.method constructor <init>(Lksf;II)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lksg;->a:Lksf;

    invoke-direct {p0, p2, p3}, Lkqk;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lksg;->a:Lksf;

    invoke-virtual {v0, p1}, Lksf;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
