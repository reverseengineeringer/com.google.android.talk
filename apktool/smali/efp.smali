.class public final Lefp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Legs;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lefq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljxa;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lefp;->a:Ljava/util/List;

    .line 52
    iget-object v2, p1, Ljxa;->a:[Ljxb;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 53
    iget-object v5, v4, Ljxb;->a:Lkcr;

    iget-object v5, v5, Lkcr;->b:Ljava/lang/String;

    .line 54
    iget-object v4, v4, Ljxb;->b:Ljava/lang/Integer;

    .line 1043
    invoke-static {v4, v1}, Laal;->a(Ljava/lang/Integer;I)I

    move-result v4

    .line 55
    iget-object v6, p0, Lefp;->a:Ljava/util/List;

    new-instance v7, Lefq;

    invoke-direct {v7, v5, v4}, Lefq;-><init>(Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lefq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lefp;->a:Ljava/util/List;

    return-object v0
.end method

.method public a(ILknq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lknq",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Ldyy;

    invoke-direct {v0}, Ldyy;-><init>()V

    .line 66
    new-instance v0, Lbfz;

    .line 2036
    sget-object v1, Laal;->oJ:Landroid/content/Context;

    .line 66
    invoke-direct {v0, v1, p1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 68
    new-instance v1, Ldvu;

    invoke-direct {v1, p0}, Ldvu;-><init>(Lefp;)V

    invoke-virtual {v1, v0}, Ldvu;->a(Lbfz;)V

    .line 69
    return-void
.end method
