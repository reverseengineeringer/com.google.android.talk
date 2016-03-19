.class final Laoq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lajf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lajf",
        "<TData;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Laor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laor",
            "<TData;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;Laor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Laor",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Laoq;->a:Ljava/io/File;

    .line 62
    iput-object p2, p0, Laoq;->b:Laor;

    .line 63
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Laoq;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Laoq;->b:Laor;

    iget-object v1, p0, Laoq;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Laor;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Lahs;Lajg;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lahs;",
            "Lajg",
            "<-TData;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Laoq;->b:Laor;

    iget-object v1, p0, Laoq;->a:Ljava/io/File;

    invoke-interface {v0, v1}, Laor;->a(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Laoq;->c:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    iget-object v0, p0, Laoq;->c:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lajg;->a(Ljava/lang/Object;)V

    .line 77
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 73
    invoke-interface {p2, v0}, Lajg;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public c()Lair;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lair;->a:Lair;

    return-object v0
.end method

.method public d()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TData;>;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Laoq;->b:Laor;

    invoke-interface {v0}, Laor;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
