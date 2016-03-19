.class public final Llwu;
.super Llvj;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Llvj",
        "<TE;>;"
    }
.end annotation


# static fields
.field public static final b:Llwu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llwu",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Llwu;

    invoke-direct {v0}, Llwu;-><init>()V

    .line 15
    sput-object v0, Llwu;->b:Llwu;

    .line 1064
    const/4 v1, 0x0

    iput-boolean v1, v0, Llvj;->a:Z

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Llvj;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llwu;->c:Ljava/util/List;

    .line 27
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Llvj;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Llwu;->c:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0}, Llwu;->c()V

    .line 40
    iget-object v0, p0, Llwu;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 41
    iget v0, p0, Llwu;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llwu;->modCount:I

    .line 42
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Llwu;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-virtual {p0}, Llwu;->c()V

    .line 52
    iget-object v0, p0, Llwu;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 53
    iget v1, p0, Llwu;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llwu;->modCount:I

    .line 54
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Llwu;->c()V

    .line 60
    iget-object v0, p0, Llwu;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget v1, p0, Llwu;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llwu;->modCount:I

    .line 62
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Llwu;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
