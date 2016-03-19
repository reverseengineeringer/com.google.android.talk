.class public final Lidp;
.super Lbys;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x607fddff1a6b9556L


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0, v0, v0}, Lidp;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lbys;-><init>(Ljava/lang/Throwable;)V

    .line 155
    iput-object p2, p0, Lidp;->a:Ljava/lang/String;

    .line 156
    return-void
.end method
