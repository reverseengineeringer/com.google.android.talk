.class final Lhdb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lhdd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lhda;


# direct methods
.method constructor <init>(Lhda;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lhdb;->a:Lhda;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 159
    check-cast p1, Lhdd;

    check-cast p2, Lhdd;

    .line 2090
    iget-wide v0, p1, Lhdd;->a:J

    .line 3090
    iget-wide v2, p2, Lhdd;->a:J

    .line 1162
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    .line 159
    return v0
.end method
