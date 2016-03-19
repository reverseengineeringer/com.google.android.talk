.class public final Lajr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lajh",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Larv;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lamg;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Larv;

    invoke-direct {v0, p1, p2}, Larv;-><init>(Ljava/io/InputStream;Lamg;)V

    iput-object v0, p0, Lajr;->a:Larv;

    .line 21
    iget-object v0, p0, Lajr;->a:Larv;

    const/high16 v1, 0x500000

    invoke-virtual {v0, v1}, Larv;->mark(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lajr;->a:Larv;

    invoke-virtual {v0}, Larv;->reset()V

    .line 1027
    iget-object v0, p0, Lajr;->a:Larv;

    .line 13
    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lajr;->a:Larv;

    invoke-virtual {v0}, Larv;->b()V

    .line 33
    return-void
.end method
