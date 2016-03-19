.class Lksu;
.super Lkss;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lkss",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient c:Lkss;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkss",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lkss;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lkss",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lkss;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    iput-object p3, p0, Lksu;->c:Lkss;

    .line 82
    return-void
.end method


# virtual methods
.method final a()Lkss;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkss",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lksu;->c:Lkss;

    return-object v0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method
