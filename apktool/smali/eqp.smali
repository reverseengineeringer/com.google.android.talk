.class final Leqp;
.super Lhby;
.source "SourceFile"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput v2, v0, v1

    sput-object v0, Leqp;->a:[I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1036
    sget-object v0, Laal;->oJ:Landroid/content/Context;

    .line 25
    sget-object v1, Leqp;->a:[I

    invoke-direct {p0, v0, v1}, Lhby;-><init>(Landroid/content/Context;[I)V

    .line 26
    iput-object p1, p0, Leqp;->b:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected a(Lkli;)V
    .locals 2

    .prologue
    .line 31
    invoke-super {p0, p1}, Lhby;->a(Lkli;)V

    .line 32
    new-instance v0, Lklh;

    invoke-direct {v0}, Lklh;-><init>()V

    iput-object v0, p1, Lkli;->a:Lklh;

    .line 33
    iget-object v0, p1, Lkli;->a:Lklh;

    iget-object v1, p0, Leqp;->b:Ljava/lang/String;

    iput-object v1, v0, Lklh;->e:Ljava/lang/String;

    .line 34
    return-void
.end method
