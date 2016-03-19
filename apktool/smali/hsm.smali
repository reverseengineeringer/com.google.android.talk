.class public final Lhsm;
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


# direct methods
.method public constructor <init>(Lkog;Lkog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkog;",
            "Lkog;",
            ")V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lhsm;->a:Lkog;

    .line 21
    iput-object p2, p0, Lhsm;->b:Lkog;

    .line 22
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1026
    iget-object v0, p0, Lhsm;->a:Lkog;

    .line 1028
    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lhsm;->b:Lkog;

    invoke-interface {v1}, Lkog;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Liog;

    .line 1042
    new-instance v2, Lhsj;

    invoke-direct {v2, v0, v1}, Lhsj;-><init>(Landroid/app/Activity;Liog;)V

    .line 9
    return-object v2
.end method
