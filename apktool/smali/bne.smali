.class public final Lbne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbkv;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "La;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbne;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method a(Lilh;)V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lbkv;

    invoke-virtual {p1, v0, p0}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 24
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lbne;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbne;->b:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    return-void

    .line 31
    :cond_1
    iput-object p1, p0, Lbne;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lbne;->b:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lbne;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 35
    iget-object v1, p0, Lbne;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
