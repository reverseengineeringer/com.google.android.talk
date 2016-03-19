.class public final Ljqw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkog;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkog;"
    }
.end annotation


# instance fields
.field private final a:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Ljqw;->a:Lkog;

    .line 16
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Ljqw;->a:Lkog;

    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhpu;

    .line 2021
    invoke-interface {v0}, Lhpu;->a()I

    move-result v0

    sget-object v1, Ljrw;->a:Ljrw;

    .line 3014
    invoke-static {v1}, Lfii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3015
    new-instance v1, Ljqy;

    invoke-direct {v1, v0}, Ljqy;-><init>(I)V

    .line 8
    return-object v1
.end method
