.class public final Ljrb;
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

.field private final b:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field

.field private final c:Lkog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkog;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkog;Lkog;Lkog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkog;",
            "Lkog;",
            "Lkog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Ljrb;->a:Lkog;

    .line 24
    iput-object p2, p0, Ljrb;->b:Lkog;

    .line 26
    iput-object p3, p0, Ljrb;->c:Lkog;

    .line 27
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1031
    new-instance v3, Ljra;

    iget-object v0, p0, Ljrb;->a:Lkog;

    .line 1032
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Ljrb;->b:Lkog;

    invoke-interface {v1}, Lkog;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpz;

    iget-object v2, p0, Ljrb;->c:Lkog;

    invoke-interface {v2}, Lkog;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Ljra;-><init>(Landroid/app/Activity;Lhpz;Ljava/lang/String;)V

    .line 9
    return-object v3
.end method
