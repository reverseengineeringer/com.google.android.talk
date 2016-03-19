.class public final Ljsp;
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
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Ljsp;->a:Lkog;

    .line 20
    iput-object p2, p0, Ljsp;->b:Lkog;

    .line 21
    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1025
    iget-object v2, p0, Ljsp;->a:Lkog;

    iget-object v0, p0, Ljsp;->b:Lkog;

    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1042
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1043
    invoke-interface {v2}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liog;

    .line 1026
    :goto_0
    if-nez v0, :cond_2

    .line 1027
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1047
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_1
    const-string v2, "More than one fragment lifecycle provider found"

    invoke-static {v1, v2}, Lfii;->b(ZLjava/lang/Object;)V

    .line 1049
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkog;

    invoke-interface {v0}, Lkog;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liog;

    goto :goto_0

    .line 1047
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 9
    :cond_2
    return-object v0
.end method
