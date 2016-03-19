.class public final Lamw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Laiu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Laiu",
            "<TDataType;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field public final c:Laja;


# direct methods
.method public constructor <init>(Laiu;Ljava/lang/Object;Laja;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Laiu",
            "<TDataType;>;TDataType;",
            "Laja;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2023
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2024
    iput-object p1, p0, Lamw;->a:Laiu;

    .line 2025
    iput-object p2, p0, Lamw;->b:Ljava/lang/Object;

    .line 2026
    iput-object p3, p0, Lamw;->c:Laja;

    .line 2027
    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 3

    .prologue
    .line 1031
    iget-object v0, p0, Lamw;->a:Laiu;

    iget-object v1, p0, Lamw;->b:Ljava/lang/Object;

    iget-object v2, p0, Lamw;->c:Laja;

    invoke-interface {v0, v1, p1, v2}, Laiu;->a(Ljava/lang/Object;Ljava/io/File;Laja;)Z

    move-result v0

    return v0
.end method
