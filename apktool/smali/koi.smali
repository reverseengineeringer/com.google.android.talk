.class public Lkoi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkoi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 59
    new-instance v0, Lkoi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkoi;-><init>(B)V

    sput-object v0, Lkoi;->a:Lkoi;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .locals 0

    .prologue
    .line 2060
    invoke-direct {p0}, Lkoi;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 2034
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 1063
    return-wide v0
.end method
