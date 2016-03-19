.class public final Lhfm;
.super Lhby;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lhcd;

.field private final c:Lhbt;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lhfm;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lhcd;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lhfm;->a:[I

    invoke-direct {p0, p1, v0}, Lhby;-><init>(Landroid/content/Context;[I)V

    .line 26
    iput-object p2, p0, Lhfm;->b:Lhcd;

    .line 27
    new-instance v0, Lhbt;

    invoke-direct {v0, p1}, Lhbt;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lhfm;->c:Lhbt;

    .line 28
    return-void
.end method


# virtual methods
.method public a(Lkli;)V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0, p1}, Lhby;->a(Lkli;)V

    .line 33
    iget-object v0, p0, Lhfm;->b:Lhcd;

    invoke-virtual {v0}, Lhcd;->l()Lhkv;

    move-result-object v0

    .line 34
    new-instance v1, Lklh;

    invoke-direct {v1}, Lklh;-><init>()V

    iput-object v1, p1, Lkli;->a:Lklh;

    .line 35
    iget-object v1, p1, Lkli;->a:Lklh;

    invoke-virtual {v0}, Lhkv;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lklh;->k:Ljava/lang/String;

    .line 36
    iget-object v1, p1, Lkli;->a:Lklh;

    invoke-virtual {v0}, Lhkv;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lklh;->b:Ljava/lang/String;

    .line 37
    new-instance v0, Ljut;

    invoke-direct {v0}, Ljut;-><init>()V

    iput-object v0, p1, Lkli;->g:Ljut;

    .line 38
    iget-object v0, p1, Lkli;->g:Ljut;

    iget-object v1, p0, Lhfm;->c:Lhbt;

    invoke-virtual {v1}, Lhbt;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Ljut;->d:Ljava/lang/Integer;

    .line 39
    return-void
.end method
