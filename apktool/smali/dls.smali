.class public final Ldls;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilu;
.implements Lioz;


# instance fields
.field a:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field b:I

.field private final c:Liog;


# direct methods
.method public constructor <init>(Liog;[Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liog;",
            "[",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Ldls;->c:Liog;

    .line 26
    iput p3, p0, Ldls;->b:I

    .line 27
    iput-object p2, p0, Ldls;->a:[Ljava/lang/Class;

    .line 28
    invoke-virtual {p1, p0}, Liog;->a(Lioz;)Lioz;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lilh;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 33
    const-class v0, Ldlt;

    invoke-virtual {p2, v0}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldlt;

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    iget-object v4, p0, Ldls;->a:[Ljava/lang/Class;

    array-length v5, v4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    .line 39
    invoke-virtual {p2, v1}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldlu;

    .line 40
    if-eqz v1, :cond_0

    .line 41
    iget-object v6, p0, Ldls;->c:Liog;

    invoke-virtual {v6, v1}, Liog;->a(Lioz;)Lioz;

    .line 42
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 45
    :cond_1
    if-eqz v0, :cond_2

    .line 46
    iget-object v1, p0, Ldls;->c:Liog;

    iget v2, p0, Ldls;->b:I

    invoke-interface {v0, p2, v1, v3, v2}, Ldlt;->a(Lilh;Liog;Ljava/util/List;I)V

    .line 48
    :cond_2
    return-void
.end method
