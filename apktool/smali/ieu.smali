.class final Lieu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object p1, p0, Lieu;->a:Ljava/lang/String;

    .line 282
    iput-wide p2, p0, Lieu;->b:J

    .line 283
    return-void
.end method
