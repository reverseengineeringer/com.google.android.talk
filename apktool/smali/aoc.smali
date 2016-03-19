.class final Laoc;
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
.field private final a:[B

.field private final b:Laob;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laob",
            "<TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([BLaob;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Laob",
            "<TData;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Laoc;->a:[B

    .line 56
    iput-object p2, p0, Laoc;->b:Laob;

    .line 57
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 68
    return-void
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
    .line 61
    iget-object v0, p0, Laoc;->b:Laob;

    iget-object v1, p0, Laoc;->a:[B

    invoke-interface {v0, v1}, Laob;->a([B)Ljava/lang/Object;

    move-result-object v0

    .line 62
    invoke-interface {p2, v0}, Lajg;->a(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public c()Lair;
    .locals 1

    .prologue
    .line 82
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
    .line 77
    iget-object v0, p0, Laoc;->b:Laob;

    invoke-interface {v0}, Laob;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
