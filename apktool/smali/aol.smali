.class final Laol;
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
.field private final a:Ljava/lang/String;

.field private final b:Laok;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laok",
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
.method public constructor <init>(Ljava/lang/String;Laok;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Laok",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Laol;->a:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Laol;->b:Laok;

    .line 70
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Laol;->b:Laok;

    iget-object v1, p0, Laol;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Laok;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
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
    .line 75
    :try_start_0
    iget-object v0, p0, Laol;->b:Laok;

    iget-object v1, p0, Laol;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laok;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Laol;->c:Ljava/lang/Object;

    .line 76
    iget-object v0, p0, Laol;->c:Ljava/lang/Object;

    invoke-interface {p2, v0}, Lajg;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-interface {p2, v0}, Lajg;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method public c()Lair;
    .locals 1

    .prologue
    .line 103
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
    .line 98
    iget-object v0, p0, Laol;->b:Laok;

    invoke-virtual {v0}, Laok;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
