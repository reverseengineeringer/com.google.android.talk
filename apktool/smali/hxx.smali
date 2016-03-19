.class public final Lhxx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/support/rastermill/FrameSequence;


# direct methods
.method public constructor <init>(Landroid/support/rastermill/FrameSequence;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lhxx;->a:Landroid/support/rastermill/FrameSequence;

    .line 17
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;)Z
    .locals 6

    .prologue
    const/16 v5, 0x50

    const/16 v4, 0x46

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    .line 39
    :goto_0
    return v1

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x52

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x49

    if-ne v2, v3, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, v4, :cond_1

    const/4 v2, 0x3

    .line 27
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, v4, :cond_1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x57

    if-ne v2, v3, :cond_1

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x45

    if-ne v2, v3, :cond_1

    const/16 v2, 0xa

    .line 28
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x42

    if-ne v2, v3, :cond_1

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, v5, :cond_1

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x56

    if-ne v2, v3, :cond_1

    const/16 v2, 0xd

    .line 29
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-ne v2, v5, :cond_1

    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    const/16 v3, 0x38

    if-ne v2, v3, :cond_1

    const/16 v2, 0xf

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v3, 0x58

    if-ne v2, v3, :cond_1

    move v2, v0

    .line 30
    :goto_1
    if-nez v2, :cond_2

    .line 39
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_1
    move v2, v1

    .line 29
    goto :goto_1

    .line 36
    :cond_2
    const/16 v2, 0x14

    :try_start_1
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 39
    :goto_2
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move v1, v0

    goto/16 :goto_0

    :cond_3
    move v0, v1

    .line 36
    goto :goto_2

    .line 39
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v0
.end method
