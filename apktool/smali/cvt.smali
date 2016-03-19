.class public final Lcvt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field final synthetic a:Lcvo;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcvo;Ljava/lang/String;J[Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 705
    iput-object p1, p0, Lcvt;->a:Lcvo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 706
    iput-object p2, p0, Lcvt;->b:Ljava/lang/String;

    .line 707
    iput-wide p3, p0, Lcvt;->c:J

    .line 708
    iput-object p5, p0, Lcvt;->d:[Ljava/io/InputStream;

    .line 709
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcvt;->d:[Ljava/io/InputStream;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public close()V
    .locals 4

    .prologue
    .line 735
    iget-object v1, p0, Lcvt;->d:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 736
    invoke-static {v3}, Lcvo;->a(Ljava/io/Closeable;)V

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 738
    :cond_0
    return-void
.end method
