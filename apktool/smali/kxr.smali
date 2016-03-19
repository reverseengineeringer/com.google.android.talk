.class public final Lkxr;
.super Lksf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lksf",
        "<TE;>;"
    }
.end annotation


# static fields
.field public static final a:Lksf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lksf",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient b:I

.field private final transient c:I

.field private final transient d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lkxr;

    sget-object v1, Lkxi;->a:[Ljava/lang/Object;

    invoke-direct {v0, v1}, Lkxr;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lkxr;->a:Lksf;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 44
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lkxr;-><init>([Ljava/lang/Object;II)V

    .line 45
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lksf;-><init>()V

    .line 38
    iput p2, p0, Lkxr;->b:I

    .line 39
    iput p3, p0, Lkxr;->c:I

    .line 40
    iput-object p1, p0, Lkxr;->d:[Ljava/lang/Object;

    .line 41
    return-void
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lkxr;->d:[Ljava/lang/Object;

    iget v1, p0, Lkxr;->b:I

    iget v2, p0, Lkxr;->c:I

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v0, p0, Lkxr;->c:I

    add-int/2addr v0, p2

    return v0
.end method

.method public a(I)Lkyq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkyq",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lkxr;->d:[Ljava/lang/Object;

    iget v1, p0, Lkxr;->b:I

    iget v2, p0, Lkxr;->c:I

    invoke-static {v0, v1, v2, p1}, Lkty;->a([Ljava/lang/Object;III)Lkyq;

    move-result-object v0

    return-object v0
.end method

.method b(II)Lksf;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lksf",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Lkxr;

    iget-object v1, p0, Lkxr;->d:[Ljava/lang/Object;

    iget v2, p0, Lkxr;->b:I

    add-int/2addr v2, p1

    sub-int v3, p2, p1

    invoke-direct {v0, v1, v2, v3}, Lkxr;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method e()Z
    .locals 2

    .prologue
    .line 54
    iget v0, p0, Lkxr;->c:I

    iget-object v1, p0, Lkxr;->d:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 67
    iget v0, p0, Lkxr;->c:I

    invoke-static {p1, v0}, Lfii;->a(II)I

    .line 68
    iget-object v0, p0, Lkxr;->d:[Ljava/lang/Object;

    iget v1, p0, Lkxr;->b:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lkxr;->a(I)Lkyq;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lkxr;->c:I

    return v0
.end method
