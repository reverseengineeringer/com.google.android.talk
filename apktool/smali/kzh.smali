.class public final Lkzh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkyo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkyo",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 819
    new-instance v0, Lkzi;

    invoke-direct {v0}, Lkzi;-><init>()V

    sput-object v0, Lkzh;->a:Lkyo;

    return-void
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Source %s and destination %s must be different"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object p1, v4, v1

    invoke-static {v0, v3, v4}, Lfii;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    new-instance v0, Lkzk;

    .line 1118
    invoke-direct {v0, p0}, Lkzk;-><init>(Ljava/io/File;)V

    .line 317
    new-array v1, v2, [Lkzg;

    .line 1197
    new-instance v2, Lkzj;

    .line 1200
    invoke-direct {v2, p1, v1}, Lkzj;-><init>(Ljava/io/File;[Lkzg;)V

    .line 317
    invoke-virtual {v0, v2}, Lkyy;->a(Lkyx;)J

    .line 318
    return-void

    :cond_0
    move v0, v2

    .line 315
    goto :goto_0
.end method
